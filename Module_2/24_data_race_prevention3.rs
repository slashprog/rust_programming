use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let data = Arc::new(Mutex::new(5));  // Using Arc to allow shared ownership and Mutex to allow safe mutable access
    
    let data_clone = Arc::clone(&data);
    let handle = thread::spawn(move || {
        let mut data = data_clone.lock().unwrap();
        *data += 1;  // Safely modifying the data inside the mutex
        println!("Data in thread: {}, {:p}", *data, &*data);
    });
    
    let mut d = data.lock().unwrap();
    *d += 1;  // Safely modifying the data inside the mutex
    handle.join().unwrap(); // Wait for the thread to finish - DEADLOCK!

    println!("Data in main thread: {}, {:p}", *d, &*d);  // Reading in main thread

}
