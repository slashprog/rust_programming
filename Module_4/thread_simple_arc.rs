use std::thread;
use std::sync::Arc;

fn main() {
    let mut counter = Arc::new(10);

    println!("In main thread: counter = {}", counter);
    
    let mut value = counter.clone();
    let handle1 = thread::spawn(move || {
        println!("In thread 1: counter = {}", value);
        thread::sleep(std::time::Duration::from_millis(100));
        println!(" In thread 1: Arc::get_mut(&mut value) = {:?}", Arc::get_mut(&mut value));
        //*Arc::get_mut(&mut value).unwrap() += 1;
        println!("In thread 1 after increment: counter = {}", value);
    });

    let mut value = counter.clone();
    let handle2 = thread::spawn(move || {
        println!("In thread 2: counter = {}", value);
        thread::sleep(std::time::Duration::from_millis(200));
        value += 5;
        println!("In thread 2 after increment: counter = {}", value);
    });

    thread::sleep(std::time::Duration::from_millis(300));
    //*Arc::get_mut(&mut counter).unwrap() += 5;
    println!("In main thread after increment: counter = {}", counter);
    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("In main thread: counter = {}", counter);
}