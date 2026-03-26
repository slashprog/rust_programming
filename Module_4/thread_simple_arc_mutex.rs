use std::thread;

use std::sync::{Arc, Mutex};

fn main() {
    let counter = Arc::new(Mutex::new(10));

    println!("In main thread: counter = {}", counter.lock().unwrap());
    
    let value = counter.clone();
    let handle1 = thread::spawn(move || {
        println!("In thread 1: counter = {}", value.lock().unwrap());
        thread::sleep(std::time::Duration::from_millis(100));
        *value.lock().unwrap() += 1;
        println!("In thread 1 after increment: counter = {}", value.lock().unwrap());
    });

    let value = counter.clone();
    let handle2 = thread::spawn(move || {
        println!("In thread 2: counter = {}", value.lock().unwrap());
        thread::sleep(std::time::Duration::from_millis(200));
        *value.lock().unwrap() += 2;
        println!("In thread 2 after increment: counter = {}", value.lock().unwrap());
    });

    thread::sleep(std::time::Duration::from_millis(300));
    *counter.lock().unwrap() += 5;
    println!("In main thread after increment: counter = {}", counter.lock().unwrap());
    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("In main thread: counter = {}", counter.lock().unwrap());
}