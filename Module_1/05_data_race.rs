use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let mut counter = Arc::new(Mutex::new(0));

    let handles: Vec<_> = (0..2).map(|_| {
        // let c = Arc::clone(&counter);
        thread::spawn(move || {
            for _ in 0..1_000_000 {
                let mut num = counter.lock().unwrap();
                *num += 1;
            }
        })
    }).collect();

    for h in handles { h.join().unwrap(); }
    println!("Result: {}", *counter.lock().unwrap()); // Always correct
}