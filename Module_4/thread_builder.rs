use std::thread;

fn main() {

    let handle = thread::Builder::new()
        .name("my_thread".to_string())
        .stack_size(512 * 1024) // 512 KB stack size
        .spawn(|| {
            println!("Hello from the thread: {}", 
                thread::current().name().unwrap_or("unknown"));
        })
        .unwrap();

    println!("Hello from the main thread: {}", 
        thread::current().name().unwrap_or("main"));
        
    handle.join().unwrap();

 
}