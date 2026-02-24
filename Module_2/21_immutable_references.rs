fn main() {
    let s = String::from("hello");
    
    // Multiple immutable references are OK
    let r1 = &s;
    let r2 = &s;
    let r3 = &s;  // Any number allowed!
    
    println!("{}, {}, {}", r1, r2, r3);
    
    // All references read-only
    // r1.push_str(" world");  // ERROR! Can't modify
    
    // Function that takes immutable reference
    fn print_length(s: &String) {
        println!("Length: {}", s.len());
        // s.push_str("!");  // ERROR: immutable reference
    }
}
