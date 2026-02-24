fn main() {
    // Allocate memory on the heap using Box
    let ptr = Box::new(42);
    
    // Use the value
    println!("Value: {}", ptr);
    
    // Memory is automatically freed when ptr goes out of scope
    // Trying to use ptr here would cause a COMPILE ERROR!
} // ptr is dropped here automatically