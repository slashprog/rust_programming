use std::thread;

fn main() {
    // Configure thread with Builder
    let builder = thread::Builder::new()
        .name("worker".into())
        .stack_size(1024 * 1024);  // 1MB stack
    
    let handle = builder.spawn(|| {
        println!("Thread name: {:?}", thread::current().name());
    }).unwrap();
    
    handle.join().unwrap();
    
    // Thread information
    let current = thread::current();
    println!("Main thread: {:?}", current.id());
    
    // Thread sleep and yield
    thread::sleep(std::time::Duration::from_secs(1));
    thread::yield_now();  // Give up CPU voluntarily
    
    // Check if thread panicked
    let handle = thread::spawn(|| {
        panic!("Oh no!");
    });
    
    let result = handle.join();
    match result {
        Ok(_) => println!("Thread succeeded"),
        Err(_) => println!("Thread panicked"),
    }
}
