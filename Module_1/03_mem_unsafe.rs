use std::alloc::{alloc, dealloc, Layout};

fn main() {
    unsafe {
        // Manually allocate memory (like malloc)
        let layout = Layout::new::<i32>();
        let ptr = alloc(layout) as *mut i32;
        
        if ptr.is_null() {
            panic!("Allocation failed!");
        }
        
        // Write value
        *ptr = 42;
        println!("Value: {}", *ptr);
        
        // Manually free memory
        dealloc(ptr as *mut u8, layout);
        
        // THIS WOULD STILL BE UNDEFINED BEHAVIOR!
        println!("Value: {}", *ptr); // UNSAFE! Use after free
    }
}