use std::thread;
use std::rc::Rc;
use std::cell::RefCell;

fn main() {
    let counter = Rc::new(RefCell::new(0));

 
    let counter_clone1 = Rc::clone(&counter);
    let handle1 = thread::spawn(move || {
        for _ in 0..5 {
            *counter_clone1.borrow_mut() += 1; // Mutate the counter through RefCell
            println!("Thread 1: counter = {}", counter_clone1.borrow());
        }
    });

    let counter_clone2 = Rc::clone(&counter);
    let handle2 = thread::spawn(move || {
        for _ in 0..5 {
            *counter_clone2.borrow_mut() += 2; // Mutate the counter through RefCell
            println!("Thread 2: counter = {}", counter_clone2.borrow());
        }
    });

    handle1.join().unwrap();
    handle2.join().unwrap();

    println!("Final counter value: {}", counter.borrow());
}