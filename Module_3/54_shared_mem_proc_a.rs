use shared_memory::*;
use std::ptr;

fn main() {
    // 1. Create a shared memory segment with a unique identifier (a file path or OS link)
    // We are requesting 4096 bytes (4KB) of memory.
    let shmem = ShmemConf::new()
        .size(4096)
        .os_id("my_rust_shared_memory") // The unique name for this memory block
        .create()
        .expect("Failed to create shared memory");

    println!("Shared memory created!");

    // 2. Get a raw pointer to the beginning of the shared memory
    let raw_ptr = shmem.as_ptr();

    // 3. Write data into the shared memory. 
    // We have to use unsafe because we are interacting with raw memory pointers.
    let message = "Hello from Process A!";
    unsafe {
        // Copy the bytes of our message into the shared memory space
        ptr::copy_nonoverlapping(
            message.as_ptr(), 
            raw_ptr, 
            message.len()
        );
        // Add a null terminator (0) so Process B knows where the string ends
        ptr::write(raw_ptr.add(message.len()), 0); 
    }

    println!("Data written. Waiting for Process B...");
    
    // Pause so Process A doesn't exit (which would destroy the memory)
    // In a real app, you'd use a cross-process signal or loop here.
    std::thread::park(); 
}