fn main() {
    let s1 = String::from("hello");
    let s2 = s1.clone();  // EXPLICIT deep copy
    
    // let s2 = s1;  // MOVE by default, not copy!
    
    // Function call - must explicitly decide
    fn func(s: String) { /* ... */ }
    // func(s1);  // MOVES unless you .clone()
}
