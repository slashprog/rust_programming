use std::thread;

fn main() {
    let mut counter = 0; 
    
    let handle = thread::spawn(|| {
        // counter copied here! Why? counter is on stack (Copy Trait)
        let mut counter = 10;
        counter += 1;  
        println!("Counter in thread: {}", counter);
    });
    println!("main thread: waiting for worker thread to complete.");
    println!("{}", counter);  

    handle.join().unwrap();
    println!("main thread: worker thread has completed: counter = {}", counter);
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
