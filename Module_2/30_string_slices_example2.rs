// Problem: Find first word in a string
fn first_word_bad(s: &String) -> usize {
    let bytes = s.as_bytes();
    
    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return i;  // Return index
        }
    }
    
    s.len()  // Return length if no space
}
// PROBLEM: Index may become invalid if String changes!

// Solution: Return a slice
fn first_word(s: &str) -> &str {  // Takes &str, more flexible!
    let bytes = s.as_bytes();
    
    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[0..i];  // Return slice
        }
    }
    
    &s[..]  // Return whole string
}

fn main() {
    let s = String::from("hello world");
    let word = first_word(&s);  // Works with &String
    // let word = first_word("hello world");  // Also works with &str!
    
    // s.clear();  // ERROR: can't clear while borrowed!
    println!("first word: {}", word);
}
