use std::thread;
use std::sync::{Arc, Mutex};

fn main() {
    let counter = Arc::new(Mutex::new(0)); 

    let handles = (0..2).map(|i| {
        let counter = Arc::clone(&counter);
        thread::spawn(move || {
            for _ in 0..1_000_000 {
                let mut c = counter.lock().unwrap(); // Lock the mutex to get mutable access to the counter
                *c += 1;
            }
            println!("In thread {}: counter = {}", i, *counter.lock().unwrap());
        })
    }).collect::<Vec<_>>();

 //   let handles = vec![];
 //   for i in 0..2 {
 //       let counter = Arc::clone(&counter);
 //       let handle = thread::spawn(move || {
 //           for _ in 0..1_000_000 {
 //               let mut c = counter.lock().unwrap(); // Lock the mutex to get mutable access to the counter
 //               *c += 1;
 //           }
 //           println!("In thread {}: counter = {}", i, *counter.lock().unwrap());
 //       });
 //       handles.push(handle);
 //   }

    for handle in handles {
        handle.join().unwrap();
    }
    println!("main thread: worker thread has completed: counter = {}", counter.lock().unwrap());
}

// Rust's approach:
// 1. Ownership forces explicit sharing
// 2. Borrow checker prevents data races at compile time
// 3. Fearless concurrency: "If it compiles, it's race-free"
