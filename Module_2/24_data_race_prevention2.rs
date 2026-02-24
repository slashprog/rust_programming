use std::thread;

fn main() {
    let mut data = Box::new(5);
    
    let handle = thread::spawn(move || {
        *data += 1;  // Moving ownership to the thread and modifying it there - fails
        println!("Data in thread: {}, {:p}", *data, &*data);
    });
    
    // *data += 1;  // Fails - cannot access data in main thread after moving it to the thread
    handle.join().unwrap();

    // println!("Data in main thread: {}, {:p}", *data, &*data);  // Reading in main thread

}
