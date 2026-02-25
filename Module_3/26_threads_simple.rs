use std::thread;
use std::time::Duration;

fn main() {
    let handle = thread::spawn(|| {
        for i in 1..5 {
            println!("Hi from spawned thread: {}", i);
            thread::sleep(Duration::from_millis(1));
        }
    });

    // Doing work in the main thread
    for i in 1..3 {
        println!("Hi from main: {}", i);
    }

    handle.join().unwrap(); // Wait for the spawned thread to finish
}