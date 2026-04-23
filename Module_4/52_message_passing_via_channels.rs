use std::sync::mpsc;
use std::thread;

fn main() {
    // Create channel (multiple producer, single consumer)
    let (tx, rx) = mpsc::channel();
    
    // Spawn thread that sends data
    thread::spawn(move || {
        let vals = vec![
            String::from("hi"),
            String::from("from"),
            String::from("the"),
            String::from("thread"),
        ];
        
        for val in vals {
            tx.send(val).unwrap();
            //println!("Sent a message {}", val);
            // val MOVED, can't use after send!
        }
    });
    
    // Receive data in main thread
    for received in rx {
        println!("Got: {}", received);
    }
}

// Memory safety: send() transfers ownership!
// No shared state means no data races
