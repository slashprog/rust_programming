use std::thread;
use std::sync::Arc;
use std::sync::atomic::{AtomicUsize, Ordering};

fn main() {
    let counter = Arc::new(AtomicUsize::new(0));

    {
        let counter_clone1 = Arc::clone(&counter);
        let handle1 = thread::spawn(move || {
            for _ in 0..1_000_000 {
                counter_clone1.fetch_add(1, Ordering::SeqCst);
                println!("Thread 1: counter = {}", counter_clone1.load(Ordering::SeqCst));
            }
        });
        handle1.join().unwrap();
    }

    {
        let counter_clone2 = Arc::clone(&counter);
        let handle2 = thread::spawn(move || {
            for _ in 0..1_000_000 {
                counter_clone2.fetch_add(1, Ordering::SeqCst);
                println!("Thread 2: counter = {}", counter_clone2.load(Ordering::SeqCst));
            }
        });
        handle2.join().unwrap();
    }

    println!("Final counter value: {}", counter.load(Ordering::SeqCst));
}