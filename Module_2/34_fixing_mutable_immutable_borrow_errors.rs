// PROBLEM: Mixing mutable and immutable borrows
// fn main() {
//     let mut s = String::from("hello");
//     let r1 = &s;
//     let r2 = &mut s;
//     println!("{}", r1);
// }

// SOLUTION 1: Don't use r1 after creating mutable borrow
fn main() {
    let mut s = String::from("hello");
    let r1 = &s;
    println!("{}", r1);  // Use r1 before mutable borrow
    
    let r2 = &mut s;  // Now mutable borrow is OK
    r2.push_str(" world");
    println!("{}", r2);
}

// SOLUTION 2: Use separate scopes
fn main() {
    let mut s = String::from("hello");
    
    {
        let r1 = &s;  // Immutable borrow scope
        println!("{}", r1);
    }  // r1 ends here
    
    let r2 = &mut s;  // Mutable borrow OK now
    r2.push_str(" world");
    println!("{}", r2);
}
