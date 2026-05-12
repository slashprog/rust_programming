fn main() {
    let mut s = String::from("Hello, world!");
    let r1 = &s; // Immutable reference to s
    let r2 = &s; // Another immutable reference to s
    println!("r1: {}, r2: {}", r1, r2); // This works fine because we have only immutable references to s
 
// The lifetimes of r1 and r2 end here, so we can create a mutable reference to s

    let r3 = &mut s; // Mutable reference to s
    r3.push_str(" Welcome to Rust!"); // Modifying s through the mutable reference  

    println!("r3: {}", r3); // This works fine because we have only one mutable reference to s
}