use shared_memory::*;

fn main() {
    // 1. Open the existing shared memory segment using the same identifier
    let shmem = ShmemConf::new()
        .os_id("my_rust_shared_memory")
        .open()
        .expect("Failed to open shared memory. Did Process A create it?");

    // 2. Get the raw pointer
    let raw_ptr = shmem.as_ptr();

    // 3. Read the data
    unsafe {
        // We look through the memory until we find the null terminator (0) we added
        let mut len = 0;
        while *raw_ptr.add(len) != 0 {
            len += 1;
        }

        // Convert the raw bytes back into a Rust slice, then into a String
        let byte_slice = std::slice::from_raw_parts(raw_ptr, len);
        let message = std::str::from_utf8(byte_slice).unwrap();

        println!("Process B read: {}", message);
    }
}