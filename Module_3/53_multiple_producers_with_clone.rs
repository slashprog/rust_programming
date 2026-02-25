use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx, rx) = mpsc::channel();
    
    // Clone transmitter for multiple producers
    let tx1 = tx.clone();
    thread::spawn(move || {
        tx1.send("Message from thread 1").unwrap();
    });
    
    let tx2 = tx.clone();
    thread::spawn(move || {
        tx2.send("Message from thread 2").unwrap();
    });
    
    // Original tx still needs to be moved
    thread::spawn(move || {
        tx.send("Message from thread 3").unwrap();
    });
    
    // Receive all messages
    for received in rx {
        println!("Got: {}", received);
    }
}
