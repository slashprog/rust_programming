use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let data = Arc::new(Mutex::new(5));
    
    let data_clone = Arc::clone(&data);
    let handle = thread::spawn(move || {
        // Child thread work
        *data_clone.lock().unwrap() += 1;
        println!("Child thread: {}", *data_clone.lock().unwrap());
    });
    
    // Main thread work
    *data.lock().unwrap() += 1;
    
    // Release lock before joining (lock guard dropped automatically)
    handle.join().unwrap();
    
    // Read final value
    println!("Final: {}", *data.lock().unwrap());
}