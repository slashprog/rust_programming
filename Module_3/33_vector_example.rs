fn main() {
    // Creating vectors
    let mut v1: Vec<i32> = Vec::new();
    let v2 = vec![1, 2, 3];          // Macro
    
    // Adding elements
    v1.push(5);
    v1.push(6);
    v1.push(7);
    
    // Reading elements (safe vs unsafe)
    let third: &i32 = &v1[2];         // Panics if out of bounds
    let third: Option<&i32> = v1.get(2);  // Returns Option
    
    match v1.get(2) {
        Some(value) => println!("Third: {}", value),
        None => println!("No third element"),
    }
    
    // Iterating
    for i in &v1 {                    // Immutable borrow
        println!("{}", i);
    }
    
    for i in &mut v1 {                 // Mutable borrow
        *i += 10;
    }
    
    // Removing elements
    let last = v1.pop();                // Option<T>
    let second = v1.remove(1);          // Panics if out of bounds
    
    // Common operations
    v1.len();
    v1.is_empty();
    v1.contains(&5);
    v1.sort();
    v1.dedup();                          // Remove consecutive duplicates
}
