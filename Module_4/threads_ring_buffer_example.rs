use std::sync::{Arc, Mutex};
use std::thread;
use std::collections::VecDeque;

struct RingBuffer<T> {
    buffer: VecDeque<T>,
    capacity: usize,
}

impl<T> RingBuffer<T> {
    fn new(capacity: usize) -> Self {
        RingBuffer {
            buffer: VecDeque::with_capacity(capacity),
            capacity,
        }
    }

    fn push(&mut self, item: T) -> Option<T> {
        if self.buffer.len() == self.capacity {
            self.buffer.pop_front()
        }
        self.buffer.push_back(item);
        None
    }

    fn pop(&mut self) -> Option<T> {
        self.buffer.pop_front()
    }
}

fn main() {
    let ring = Arc::new(Mutex::new(RingBuffer::new(10)));

    let producer = {
        let ring = Arc::clone(&ring);
        thread::spawn(move || {
            for i in 0..20 {
                let mut buffer = ring.lock().unwrap();
                buffer.push(i);
                println!("Produced: {}", i);
            }
        })
    };

    let consumer = {
        let ring = Arc::clone(&ring);
        thread::spawn(move || {
            for _ in 0..20 {
                let mut buffer = ring.lock().unwrap();
                if let Some(item) = buffer.pop() {
                    println!("Consumed: {}", item);
                }
                thread::sleep(std::time::Duration::from_millis(10));
            }
        })
    };

    producer.join().unwrap();
    consumer.join().unwrap();
}