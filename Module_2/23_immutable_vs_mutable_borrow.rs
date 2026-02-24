fn main() {
    let mut data = vec![1, 2, 3];
    
    let ref1 = &mut data;  // Mutable borrow
    
    // If Rust allowed this:
    // let ref2 = &data;   // Immutable borrow while mutable exists
    
    // ref1.push(4);  // Modifying through mutable reference
    
    // println!("{:?}", ref2);  // Reading through immutable reference
    // DATA RACE! One thread (conceptually) reading, another writing
}
