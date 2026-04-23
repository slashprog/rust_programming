use std::sync::{Arc, RwLock};
use std::thread;
use std::time::Duration;
fn main() {
    // Wrap a Vector of Strings in an RwLock, then an Arc
    let shared_log = Arc::new(RwLock::new(Vec::new()));
    let mut handles = vec![];

    // Thread 1: A Writer Thread
    let log_clone_1 = Arc::clone(&shared_log);
    handles.push(thread::spawn(move || {
        // .write() grants exclusive access to modify the vector
        // thread::sleep(Duration::from_millis(100));
        let mut log = log_clone_1.write().unwrap();
        log.push(String::from("System booted up."));
        log.push(String::from("Connecting to database..."));
    }));



    // Thread 2: A Reader Thread
    let log_clone_2 = Arc::clone(&shared_log);
    handles.push(thread::spawn(move || {
        // .read() grants shared access. Multiple readers could do this at once!
        let log = log_clone_2.read().unwrap();
        println!("Thread 2 sees {} items in the log.", log.len());
        // We can safely read the strings inside the array
        if let Some(first_entry) = log.first() {
            println!("First entry was: {}", first_entry);
        } else {
            println!("Log is empty.");
        }
    }));



    for handle in handles { handle.join().unwrap(); }
}