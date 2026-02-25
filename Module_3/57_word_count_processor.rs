use std::sync::{Arc, Mutex, mpsc};
use std::thread;
use std::collections::HashMap;
use std::time::Duration;

// Message types for workers
enum WorkerMessage {
    ProcessLine(String),
    Shutdown,
}

// Cache to avoid duplicate work
struct Cache {
    store: HashMap<String, usize>,
}

impl Cache {
    fn new() -> Self {
        Cache {
            store: HashMap::new(),
        }
    }
    
    fn get_or_compute(&mut self, line: &str) -> usize {
        if let Some(&count) = self.store.get(line) {
            println!("Cache hit: '{}' -> {}", line, count);
            return count;
        }
        
        // Compute word count
        let word_count = line.split_whitespace().count();
        self.store.insert(line.to_string(), word_count);
        println!("Cache miss: '{}' -> {}", line, word_count);
        word_count
    }
}

fn worker(
    id: usize,
    receiver: Arc<Mutex<mpsc::Receiver<WorkerMessage>>>,
    cache: Arc<Mutex<Cache>>,
    result_sender: mpsc::Sender<usize>,
) {
    loop {
        // Get next message (with lock)
        let message = {
            let rx = receiver.lock().unwrap();
            match rx.try_recv() {
                Ok(msg) => msg,
                Err(_) => {
                    thread::sleep(Duration::from_millis(10));
                    continue;
                }
            }
        };
        
        match message {
            WorkerMessage::ProcessLine(line) => {
                println!("Worker {} processing: '{}'", id, line);
                
                // Check cache and compute
                let word_count = {
                    let mut cache = cache.lock().unwrap();
                    cache.get_or_compute(&line)
                };
                
                // Send result
                result_sender.send(word_count).unwrap();
                
                // Simulate work
                thread::sleep(Duration::from_millis(50));
            }
            WorkerMessage::Shutdown => {
                println!("Worker {} shutting down", id);
                break;
            }
        }
    }
}

fn main() {
    // Create channels
    let (work_tx, work_rx) = mpsc::channel();
    let (result_tx, result_rx) = mpsc::channel();
    
    // Shared state
    let work_rx = Arc::new(Mutex::new(work_rx));
    let cache = Arc::new(Mutex::new(Cache::new()));
    
    // Spawn workers
    let mut worker_handles = vec![];
    for i in 0..3 {
        let work_rx = Arc::clone(&work_rx);
        let cache = Arc::clone(&cache);
        let result_tx = result_tx.clone();
        
        let handle = thread::spawn(move || {
            worker(i, work_rx, cache, result_tx);
        });
        worker_handles.push(handle);
    }
    
    // Send work
    let lines = vec![
        "hello world",
        "rust is awesome",
        "hello world",  // Duplicate
        "concurrency is fun",
        "rust is awesome",  // Duplicate
        "goodbye",
    ];
    
    for line in lines {
        work_tx.send(WorkerMessage::ProcessLine(line.to_string())).unwrap();
    }
    
    // Send shutdown signals
    for _ in 0..3 {
        work_tx.send(WorkerMessage::Shutdown).unwrap();
    }

    let result_handle = thread::spawn(move || {
        let mut total = 0;
        let mut received = 0;
        
        while received < 6 {  // 6 lines processed
            match result_rx.recv_timeout(Duration::from_secs(1)) {
                Ok(count) => {
                    total += count;
                    received += 1;
                    println!("Received result: {} (total: {})", count, total);
                }
                Err(_) => break,
            }
        }
        total
    });
    
    // Wait for workers
    for handle in worker_handles {
        handle.join().unwrap();
    }
    
    // Get final result
    drop(result_tx);  // Close channel so aggregator knows we're done
    let final_total = result_handle.join().unwrap();
    
    println!("\nFinal word count total: {}", final_total);
    
    // Show cache contents
    let cache = cache.lock().unwrap();
    println!("\nCache contents:");
    for (line, count) in cache.store.iter() {
        println!("  '{}': {}", line, count);
    }
}
