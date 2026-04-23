use std::thread;

fn main() {
    let s = String::from("Hello"); 
    
    let s_clone = s.clone();
    let handle = thread::spawn(move || {
        // counter copied here! Why? counter is on stack (Copy Trait)
        println!("In thread: s_clone = {}", s_clone);
    });
    println!("main thread: waiting for worker thread to complete.");
    println!("In main: s = {}", s);  

    handle.join().unwrap();
    // println!("main thread: worker thread has completed: s = {}", s);
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
