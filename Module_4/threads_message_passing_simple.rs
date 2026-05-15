use std::thread;
use std::sync::mpsc;
use std::time::Duration;

fn main() {
    let (tx, rx) = mpsc::channel();

    let mut workers = Vec::new();
    for i in 1..=5 {
        let tx = tx.clone();
        let handle = thread::Builder::new()
                     .name(format!("worker-{}", i))
                     .spawn(move || {
            let message = format!("Hello from {}", thread::current().name().unwrap());
            tx.send(message).unwrap();
        }).unwrap();
        workers.push(handle);
    }

    println!("workers = {:?}", workers);

    for handle in workers {
        handle.join().unwrap();
    }

    println!("All worker threads have finished sending messages. Now receiving in main thread..."); 

    for _ in 1..=5 {
        match rx.recv() {
            Ok(message) => println!("In main: Received: {}", message),
            Err(e) => println!("In main: Failed to receive message: {:?}", e),
        }
    }

    //for received in rx {
    //    println!("In main: Received: {}", received);
    //}

    //loop {
    //    match rx.try_recv() {
    //        Ok(message) => println!("In main: Received: {}", message),
    //        Err(_) => break, // Channel closed, exit the loop
    //    }
    //    thread::sleep(Duration::from_millis(100));
    //}

    println!("All messages received, waiting for worker threads to finish...");
 
}