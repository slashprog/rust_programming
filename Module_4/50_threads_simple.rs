use std::thread;
use std::time::Duration;

fn main() {
    // Basic thread spawn
    let handle = thread::spawn(|| {
        for i in 1..10 {
            println!("Thread: {}", i);
            thread::sleep(Duration::from_millis(1));
        }
    });
    
    // Main thread work
    for i in 1..5 {
        println!("Main: {}", i);
        thread::sleep(Duration::from_millis(1));
    }
    
    // Wait for thread to finish
    handle.join().unwrap();
    
    // Thread with move closure (captures values)
    let v = vec![1, 2, 3];
    
    let handle = thread::spawn(move || {
        println!("Vector: {:?}", v);
    });  // v moved into thread
    
    handle.join().unwrap();
    // println!("{:?}", v);  // ERROR: v moved!
}
