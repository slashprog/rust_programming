fn main() {
    let s1 = String::from("hello");
    
    // Create reference (borrowing)
    let len = calculate_length(&s1);
    
    // s1 is still valid!
    println!("s1: {}, length: {}", s1, len);
}

fn calculate_length(s: &String) -> usize {  // s is a reference
    s.len()  // Use reference, but don't own it
}  // s goes out of scope, but doesn't drop the String

// Memory View:
// Stack:              Heap:
// s1: [ptr, len, cap] → "hello"
// &s1: [ptr_to_s1] ───┘ (just a pointer on stack)
