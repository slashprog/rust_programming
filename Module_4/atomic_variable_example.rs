use std::thread;
use std::sync::{Arc};
use std::sync::atomic::{AtomicU32, Ordering};

fn main() {
    let counter = Arc::new(AtomicU32::new(0)); // Create an atomic counter wrapped in an Arc for shared ownership

    let handles = (0..2).map(|i| {
        let counter = Arc::clone(&counter);
        thread::spawn(move || {
            for _ in 0..1_000_000 {
                counter.fetch_add(1, Ordering::SeqCst); // Atomically increment the counter
            }
            println!("In thread {}: counter = {}", i, counter.load(Ordering::SeqCst));
        })
    }).collect::<Vec<_>>();


    for handle in handles {
        handle.join().unwrap();
    }
    println!("main thread: worker thread has completed: counter = {}", 
                                        counter.load(Ordering::SeqCst));
}

