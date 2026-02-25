fn main() {
    // Creating strings
    let s1 = String::new();
    let s2 = "hello".to_string();
    let s3 = String::from("world");
    
    // Updating strings
    let mut s = String::from("hello");
    s.push('!');                    // Add char
    s.push_str(" world");            // Add string slice
    s += "!!!";                      // Concatenate (moves s!)
    
    // Concatenation (doesn't take ownership)
    let s4 = s1 + &s2 + &s3;         // s1 moved! can't use after
    
    // Format macro (no ownership transfer)
    let s5 = format!("{}-{}-{}", s2, s3, "rust");
    
    // String indexing? NO!
    // let c = s5[0];  // ERROR: String can't be indexed
    
    // Slicing (careful with UTF-8!)
    let slice = &s5[0..4];  // Panics if not on char boundary
    
    // Safe iteration
    for c in s5.chars() {          // Iterate over Unicode chars
        println!("{}", c);
    }
    
    for b in s5.bytes() {           // Iterate over raw bytes
        println!("{}", b);
    }
}
