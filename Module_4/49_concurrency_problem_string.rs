use std::thread;

fn main() {
    let mut message: String = String::from("Hello"); // String is heap-allocated and does not implement the Copy trait
    
    let handle1 = thread::spawn(move || {
        //message.push_str(", world!"); // This is fine because message is moved into the thread
        println!("In thread 1: message = {}", message);
    });

    let handle2 = thread::spawn(move || {
        //message.push_str(" Goodbye!"); // This is also fine because message is moved into the thread
        println!("In thread 2: message = {}", message);
    });

    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("main thread: worker thread has completed: message = {}", message);
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
