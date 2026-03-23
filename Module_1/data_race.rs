use std::thread;

fn main() {
    let mut counter = 0;

    let t1 = thread::spawn(move || {
        for _ in 0..1_000_000 {
            counter += 1; // This is a copy, not a reference)
        }
    });

    let t2 = thread::spawn(move || {
        for _ in 0..1_000_000 {
            counter += 1; // This is a copy, not a reference)
        }
    });

    t1.join().unwrap();
    t2.join().unwrap();
    println!("Result: {}", counter); 
}