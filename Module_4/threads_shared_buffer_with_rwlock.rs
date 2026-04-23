use std::sync::{Arc, RwLock};
use std::thread;

// This pattern allows multiple readers or one writer at a time, 
// improving performance when reads are more frequent than writes.

fn main() {
    let shared_buffer = Arc::new(RwLock::new(vec![0; 1000]));

    let mut handles = vec![];

    // Writer threads
    for i in 0..2 {
        let buffer = Arc::clone(&shared_buffer);
        handles.push(thread::spawn(move || {
            let mut data = buffer.write().unwrap();
            for item in data.iter_mut() {
                *item = i;
            }
            println!("Writer {} finished", i);
        }));
    }

    // Reader threads
    for _ in 0..4 {
        let buffer = Arc::clone(&shared_buffer);
        handles.push(thread::spawn(move || {
            let data = buffer.read().unwrap();
            println!("Read first value: {}", data[0]);
        }));
    }

    for handle in handles {
        handle.join().unwrap();
    }
}