extern crate nix;
use nix::sys::{
    mman::{mmap, MapFlags, ProtFlags},
    wait::wait,
};
use nix::unistd::{fork, ForkResult};
use std::ptr;
use std::ffi::c_void;
use std::sync::atomic::{AtomicI64, Ordering};

fn main() {
    const PAGE_SIZE: usize = 4096;
    
    // Create shared memory region
    let shared_mem = unsafe {
        mmap(
            ptr::null_mut(),
            PAGE_SIZE,
            ProtFlags::PROT_READ | ProtFlags::PROT_WRITE,
            MapFlags::MAP_SHARED | MapFlags::MAP_ANON,
            -1,
            0,
        ).expect("mmap failed")
    };
    
    // Store an atomic counter in shared memory
    let counter = shared_mem as *mut AtomicI64;
    unsafe { counter.write(AtomicI64::new(0)) };
    
    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            // Child process - safely increment counter
            for _ in 0..1000 {
                unsafe {
                    (*counter).fetch_add(1, Ordering::SeqCst);
                }
            }
        }
        Ok(ForkResult::Parent { child }) => {
            // Parent process - safely increment counter
            for _ in 0..1000 {
                unsafe {
                    (*counter).fetch_add(1, Ordering::SeqCst);
                }
            }
            wait().expect("wait failed");
            
            let final_value = unsafe { (*counter).load(Ordering::SeqCst) };
            println!("Final counter value: {}", final_value); // Should be 2000
        }
        Err(_) => eprintln!("Fork failed"),
    }
}