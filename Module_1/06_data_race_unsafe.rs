use std::thread;

static mut counter: i32 = 0;  // Mutable static is UNSAFE in Rust

fn increment() {
    for _ in 0..1_000_000 {
        // Trying to modify mutable static - requires unsafe!
        unsafe {
            counter += 1;  // RACE CONDITION: read-modify-write is not atomic
        }
    }
}

fn main() {
    let t1 = thread::spawn(increment);
    let t2 = thread::spawn(increment);
    
    t1.join().unwrap();
    t2.join().unwrap();
    
    // Reading mutable static - also requires unsafe!
    unsafe {
        println!("Result: {}", counter); // May print incorrect result due to data race

    }
}
