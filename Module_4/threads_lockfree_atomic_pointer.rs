use std::sync::atomic::{AtomicPtr, Ordering};
use std::thread;
use std::ptr;

struct Buffer {
    data: Vec<i32>,
}

fn main() {
    let buffer = Box::new(Buffer { data: vec![0; 100] });
    let shared_ptr = AtomicPtr::new(Box::into_raw(buffer));

    let handles: Vec<_> = (0..4).map(|i| {
        let ptr = &shared_ptr;
        thread::spawn(move || {
            let buffer_ptr = ptr.load(Ordering::SeqCst);
            unsafe {
                let buffer = &mut *buffer_ptr;
                for item in buffer.data.iter_mut() {
                    *item += i;
                }
            }
        })
    }).collect();

    for handle in handles {
        handle.join().unwrap();
    }

    // Clean up
    unsafe {
        let _ = Box::from_raw(shared_ptr.load(Ordering::SeqCst));
    }
}