use std::thread;
use std::sync::{Arc, Mutex};

fn main() {
    // Arc (Atomic Reference Counted) allows multiple ownership of the same data across threads
    // Mutex (Mutual Exclusion) provides interior mutability and ensures that only one thread
    let counter = Arc::new(Mutex::new(0)); 
    // NOTE: Arc is needed to share ownership of the counter across threads, 
    // and Mutex is needed to allow mutable access to the counter safely

    let handle1 = {
        let counter = Arc::clone(&counter);
        let handle1 = thread::spawn(move || {
            for _ in 0..1_000_000 {
                let mut c = counter.lock().unwrap(); // Lock the mutex to get mutable access to the counter
                *c += 1;
            }
            println!("In thread 1: counter = {}", counter.lock().unwrap());
        });
        handle1
    };

    let handle2 = {
        let counter = Arc::clone(&counter);
        let handle2 = thread::spawn(move || {
            for _ in 0..1_000_000 {
                let mut c = counter.lock().unwrap(); // Lock the mutex to get mutable access to the counter
                *c += 1;
            }
            println!("In thread 2: counter = {}", counter.lock().unwrap());
        });
        handle2
    };

    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("main thread: worker thread has completed: counter = {}", counter.lock().unwrap());
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
