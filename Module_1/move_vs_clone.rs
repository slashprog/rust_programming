fn main() {
    let p1 = String::from("Hello, Rust!"); // Create a String from a string literal on heap!
    println!("p1: {}", p1);

    //let p2 = p1; // Move p1 to p2, p1 is no longer valid
    let p2 = p1.clone(); // Clone p1 to p2, both are valid and independent
    
    println!("p2: {}", p2);
    println!("p1: {}", p1); // This will cause a compile-time error because p1 has been moved to p2
}