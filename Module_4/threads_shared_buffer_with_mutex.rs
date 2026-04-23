use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    // Create a shared buffer wrapped in Arc<Mutex>
    let shared_buffer = Arc::new(Mutex::new(vec![0; 100]));

    let mut handles = vec![];

    // Spawn multiple threads
    for i in 0..4 {
        let buffer = Arc::clone(&shared_buffer);
        handles.push(thread::spawn(move || {
            // Lock the mutex to access the buffer
            let mut data = buffer.lock().unwrap();
            
            // Modify the buffer
            for item in data.iter_mut() {
                *item += i;
            }
            println!("Thread {} modified buffer", i);
        }));
    }

    // Wait for all threads to complete
    for handle in handles {
        handle.join().unwrap();
    }

    // Access the final result
    let final_data = shared_buffer.lock().unwrap();
    println!("Final buffer: {:?}", &final_data[..10]);
}