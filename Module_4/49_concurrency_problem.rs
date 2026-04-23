use std::thread;

fn main() {
    let mut counter = 0; 
    
    let handle1 = thread::spawn(move || {
        for _ in 0..1_000_000 {
            counter += 1;
        }
        println!("In thread 1: counter = {}", counter);
    });

    let handle2 = thread::spawn(move || {
        for _ in 0..1_000_000 {
            counter += 1;
        }
        println!("In thread 2: counter = {}", counter);
    });

    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("main thread: worker thread has completed: counter = {}", counter);
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
