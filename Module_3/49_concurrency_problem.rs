use std::thread;

// This WON'T COMPILE - ownership prevents data races
fn main() {
    let counter = 0;  // Shared state
    
    let handle = thread::spawn(move || {
        // counter moved here!
        // counter += 1;  // Wouldn't compile anyway
    });
    
    // println!("{}", counter);  // ERROR: counter moved!
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
