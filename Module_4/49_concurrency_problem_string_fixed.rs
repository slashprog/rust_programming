use std::thread;
use std::sync::{Arc, Mutex};
fn main() {
    let mut message = Arc::new(Mutex::new(String::from("Hello"))); // String is heap-allocated and does not implement the Copy trait
    
    let handle1 = {
        let mut message = Arc::clone(&message);
        thread::spawn(move || {
            message.lock().unwrap().push_str(", world!"); // This is fine because message is moved into the thread
            println!("In thread 1: message = {}", message.lock().unwrap());
        })
    };

    let handle2 = {
        let mut message = Arc::clone(&message);
        thread::spawn(move || {
            message.lock().unwrap().push_str(" Goodbye!"); // This is also fine because message is moved into the thread
            println!("In thread 2: message = {}", message.lock().unwrap());
        })
    };

    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("main thread: worker thread has completed: message = {}", message.lock().unwrap());
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
