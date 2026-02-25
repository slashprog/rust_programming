fn main() {
    let optional = Some(7);
    
    // Verbose match
    match optional {
        Some(x) => println!("Got {}", x),
        None => (),
    }
    
    // Concise if let (when only one pattern matters)
    if let Some(x) = optional {
        println!("Got {}", x);
    }
    
    // if let with else
    if let Some(x) = optional {
        println!("Got {}", x);
    } else {
        println!("Nothing!");
    }
    
    // while let (useful for iterators)
    let mut stack = vec![1, 2, 3];
    
    while let Some(top) = stack.pop() {
        println!("{}", top);
    }
    
    // Working with Result
    let result: Result<i32, &str> = Ok(42);
    
    if let Ok(value) = result {
        println!("Success: {}", value);
    }
    
    // Combining with conditions
    let number = Some(42);
    if let Some(x) = number {
        if x > 40 {
            println!("Big number: {}", x);
        }
    }
    
    // Same with match guards:
    if let Some(x) = number {
        if x > 40 { /* ... */ }
    }
}
