use crossbeam::sync::{ShardedLock};
use std::sync::Arc;
use std::thread;

fn main() {
    let buffer = Arc::new(ShardedLock::new(vec![0; 1000]));

    let mut handles = vec![];

    for i in 0..4 {
        let buf = Arc::clone(&buffer);
        handles.push(thread::spawn(move || {
            let mut data = buf.write().unwrap();
            data[i * 250..(i + 1) * 250].fill(i);
        }));
    }

    for handle in handles {
        handle.join().unwrap();
    }

    let data = buffer.read().unwrap();
    println!("Buffer sections: {:?}", &data[..50]);
}