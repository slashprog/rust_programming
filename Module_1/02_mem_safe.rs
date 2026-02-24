fn main() {
    let ptr = Box::new(42);
    println!("Value: {}", ptr);
    
    // ptr is moved/dropped here? Let's see what happens...
    drop(ptr);  // Explicitly drop (optional, would happen automatically anyway)
    
    // THIS LINE WOULD CAUSE A COMPILE ERROR:
    println!("Value: {}", ptr);  // ERROR: use of moved value: `ptr`
}