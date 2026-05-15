use std::thread;

fn main() {
    let mut counter = 0;

    let handle = thread::spawn(move || {

        println!("In thread: counter = {}", counter);
        counter += 1;
        println!("In thread after increment: counter = {}", counter);
    });

    handle.join().unwrap();

    println!("Counter: {}", counter);
}