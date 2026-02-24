// PROBLEM: Move error
// fn main() {
//     let s1 = String::from("hello");
//     let s2 = s1;
//     println!("{}", s1);  // ERROR!
// }

// SOLUTION 1: Use .clone() (heap copy)
fn main() {
    let s1 = String::from("hello");
    let s2 = s1.clone();  // Deep copy
    println!("s1: {}, s2: {}", s1, s2);  // Both valid
}

// SOLUTION 2: Use references (borrowing)
fn main() {
    let s1 = String::from("hello");
    let s2 = &s1;  // Borrow, not move
    println!("s1: {}, s2: {}", s1, s2);  // Both valid
}

// SOLUTION 3: Reorder (if you only need s2)
fn main() {
    let s1 = String::from("hello");
    println!("{}", s1);  // Use before move
    let s2 = s1;  // Now move is fine
    // println!("{}", s1);  // Still error if uncommented
