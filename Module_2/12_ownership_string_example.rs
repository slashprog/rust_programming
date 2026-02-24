fn main() {
    // Stack-only: implements Copy
    let x = 5;
    let y = x;  // x is still valid
    
    // Heap-allocated: ownership rules apply
    let s1 = String::from("hello");
    let s2 = s1;  // s1 is MOVED, no longer valid
    
    // println!("{}", s1);  // COMPILE ERROR!
    println!("{}", s2);      // OK
    
    // What happens at end of scope?
    // s2 is dropped → memory freed
    // No double-free because s1 no longer owns it!
}
