use std::thread;
use std::sync::mpsc;

fn main() {
    let (tx, rx) = mpsc::channel();

    let mut workers = Vec::new();
    for i in 1..=5 {
        let tx = tx.clone();
        let handle = thread::spawn(move || {
            let message = format!("Hello from worker {}", i);
            tx.send(message).unwrap();
        });
        workers.push(handle);
    }

    
    for received in rx {
        println!("In main: Received: {}", received);
    }

    for handle in workers {
        handle.join().unwrap();
    }
}