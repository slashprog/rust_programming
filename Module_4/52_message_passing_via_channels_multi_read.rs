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

  //  for i in 0..1 {
  //      let rx = rx.clone(); // Fails! Receiver cannot be cloned, only the sender can be cloned. 
  //      thread::spawn(move || {
  //          for recieved in rx {
  //              println!("In thread {}: Got: {}", i, recieved);
  //          }
  //      });
  //  }

    // Receive data in main thread
    for received in rx {
        println!("Got: {}", received);
    }
}

// Exercise: Create two threads and try receiving from the same channel. 

// Memory safety: send() transfers ownership!
// No shared state means no data races
