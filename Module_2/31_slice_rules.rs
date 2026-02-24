fn main() {
    let mut s = String::from("hello world");
    
    // Create immutable slice
    let word = first_word(&s);
    
    // s.clear();  // ERROR! Can't mutate while borrowed
    println!("{}", word);  // word still valid
    
    // After slice is no longer used, we can mutate
    let word = first_word(&s);
    println!("{}", word);
    s.clear();  // OK - no outstanding borrows
}

fn first_word(s: &str) -> &str {
    let bytes = s.as_bytes();
    
    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[0..i];
        }
    }
    
    &s[..]
}

// Borrow checker ensures:
// • You can't modify string while slice exists
// • Slice never outlives the data it points to
