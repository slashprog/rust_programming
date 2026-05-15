use std::thread;
use std::sync::Arc;
use std::sync::Mutex;

// use std::rc::Rc;
// use std::cell::RefCell;

fn main() {
    let counter = Arc::new(Mutex::new(0));

 
    let counter_clone1 = Arc::clone(&counter);
    let handle1 = thread::spawn(move || {
        for _ in 0..1_000_000 {
           // *counter_clone1.borrow_mut() += 1; // Mutate the counter through RefCell
            let mut num = counter_clone1.lock().unwrap();
            *num += 1;
            println!("Thread 1: counter = {}", *num);
        }
    });

    let counter_clone2 = Arc::clone(&counter);
    let handle2 = thread::spawn(move || {
        for _ in 0..1_000_000 {
            //let mut num = counter_clone2.lock().unwrap();
            let mut num = counter_clone2.lock().unwrap_or_else(|e| {
                eprintln!("Failed to lock the mutex: {}", e);
                std::process::exit(1);
            });
            *num += 1;
            println!("Thread 2: counter = {}", *num);

            //match counter_clone2.lock() {
            //    Ok(mut num) => {
            //        *num += 1;
            //        println!("Thread 2: counter = {}", *num);
            //    },
            //    Err(e) => {
            //        eprintln!("Failed to lock the mutex: {}", e);
            //    }
            // }
        }
    });

    handle1.join().unwrap();
    handle2.join().unwrap();

    println!("Final counter value: {}", *counter.lock().unwrap());
}