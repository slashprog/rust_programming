use std::thread;

fn main() {
    let handle = thread::spawn(|| {
        //panic!("This is a panic in the thread!");
        println!("This is a sample thread that will return a value.");
        42
    });

    //match handle.join() {
    //    Ok(x) => println!("Thread completed successfully, returned: {}", x),
    //    Err(e) => println!("Thread panicked with error: {:?}", e),
    //}

   let ret = handle.join().unwrap_or_else(|e| {
        println!("Thread panicked with error: {:?}", e);
        -1 // Return a default value in case of panic
    });

    println!("Back in main thread: worker thread has completed with result: {}", ret);

}