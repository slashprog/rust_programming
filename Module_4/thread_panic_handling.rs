use std::thread;

fn main() {
    let handle = thread::spawn(|| {
        //panic!("This is a panic in the thread!");
        println!("This is a sample thread that will return a value.");
        // 42
    });

    //match handle.join() {
    //    Ok(x) => println!("Thread completed successfully, returned: {}", x),
    //    Err(e) => println!("Thread panicked with error: {:?}", e),
    //}

    handle.join().unwrap_or_else(|e| {
        println!("Thread panicked with error: {:?}", e);
    });

    println!("Back in main thread: worker thread has completed");

}