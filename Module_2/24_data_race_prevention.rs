use std::thread;

fn main() {
    let mut data = 5;
    
    let handle = thread::spawn(move || {
        data += 1;  // Would modify in another thread
        println!("Data in thread: {}, {:p}", data, &data);
    });
    
    data += 1;  // Modifying in main thread
    handle.join().unwrap();

    println!("Data in main thread: {}, {:p}", data, &data);  // Reading in main thread
    // DATA RACE! But Rust prevents with ownership/borrowing
}
