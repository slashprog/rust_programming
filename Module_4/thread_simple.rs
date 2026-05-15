use std::thread;
use std::time::Duration;

fn main() {
    let mut counter = 10;

    println!("In main thread: counter = {}", counter);
    
    let handle1 = thread::spawn(move || {
            println!("In thread 1: counter = {}", counter);
            counter += 1;
            thread::sleep(Duration::from_millis(100));
            println!("In thread 1 after increment: counter = {}", counter);
    });

    let handle2 = thread::spawn(move || {
            println!("In thread 2: counter = {}", counter);
            counter += 2;
            thread::sleep(Duration::from_millis(50));
            println!("In thread 2 after increment: counter = {}", counter);
    });

    counter += 5;
    println!("In main thread after increment: counter = {}", counter);
    handle1.join().unwrap();
    handle2.join().unwrap();
    println!("In main thread: counter = {}", counter);
}