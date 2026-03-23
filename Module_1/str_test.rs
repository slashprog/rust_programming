fn main() {
    
    let mut s = String::from("This is a longer string to demonstrate capacity changes.");
    println!("String: {}, Length: {}, Capacity: {}", s, s.len(), s.capacity());

    s = String::from("Hello, Rust!"); // Create a String from a string literal on heap!
    println!("String: {}, Length: {}, Capacity: {}", s, s.len(), s.capacity());

    
}