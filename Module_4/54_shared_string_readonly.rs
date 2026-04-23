use std::sync::Arc;
use std::thread;

fn main() {
    // A large block of text that won't change
    let shared_text = Arc::new(String::from("This is a very important configuration string."));
    let mut handles = vec![];

    for i in 0..3 {
        let text_clone = Arc::clone(&shared_text);
        handles.push(thread::spawn(move || {
            // Multiple threads can read this simultaneously without locking!
            println!("Thread {} read: {}", i, text_clone);
        }));
    }

    for handle in handles { handle.join().unwrap(); }
}