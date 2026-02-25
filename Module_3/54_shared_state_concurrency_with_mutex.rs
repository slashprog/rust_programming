use std::sync::Mutex;

fn main() {
    // Mutex protects data
    let m = Mutex::new(5);
    
    {
        // Lock returns MutexGuard (smart pointer)
        let mut num = m.lock().unwrap();
        *num = 6;
        // Lock automatically released when num goes out of scope
    }
    
    println!("m = {:?}", m);
    
    // With multiple threads, we need Arc
    // let counter = Mutex::new(0);
    // thread::spawn(move || {  // ERROR: counter moved!
    //     *counter.lock().unwrap() += 1;
    // });
}
