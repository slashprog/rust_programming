use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    // 1. Create a variable wrapped in a Mutex, then wrap that in an Arc.
    // The initial value of our shared memory is 0.
    let counter = Arc::new(Mutex::new(0));

    // A vector to hold our thread handles so we can wait for them to finish
    let mut handles = vec![];

    for _ in 0..10 {
        // 2. Clone the Arc for each thread. 
        // This doesn't clone the data, just creates a new pointer to it, 
        // incrementing the atomic reference count.
        let counter_clone = Arc::clone(&counter);

        // 3. Spawn a new thread and move the cloned Arc into it.
        let handle = thread::spawn(move || {
            // 4. Lock the Mutex to safely access the data.
            // unwrap() handles the case where another thread panicked while holding the lock.
            let mut num = counter_clone.lock().unwrap();

            // 5. Modify the shared memory
            *num += 1;
            
            // The lock is automatically released when `num` goes out of scope 
            // at the end of this closure.
        });

        handles.push(handle);
    }

    // 6. Wait for all threads to finish their execution
    for handle in handles {
        handle.join().unwrap();
    }

    // 7. Print the final result. We lock it one last time to read the value.
    println!("Final counter value: {}", *counter.lock().unwrap());
}