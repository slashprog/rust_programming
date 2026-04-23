use std::sync::mpsc;
use std::thread;

fn main() {
    let (sender, receiver) = mpsc::channel();

    // Producer thread
    let producer = thread::spawn(move || {
        let buffer = vec![1, 2, 3, 4, 5];
        sender.send(buffer).unwrap();
    });

    // Consumer thread
    let consumer = thread::spawn(move || {
        let received_buffer = receiver.recv().unwrap();
        println!("Received buffer: {:?}", received_buffer);
    });

    producer.join().unwrap();
    consumer.join().unwrap();
}