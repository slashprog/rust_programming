// This would create a dangling reference (if allowed)
fn dangle() -> &String {
    let s = String::from("hello");
    &s  // We return reference to s
}  // s goes out of scope, memory freed!
   // Reference points to invalid memory!

// ERROR! Rust catches this:
// fn dangle() -> &String {  // missing lifetime specifier
//     let s = String::from("hello");
//     &s
// }

// Correct version - return the String directly
fn no_dangle() -> String {
    let s = String::from("hello");
    s  // Ownership moves out
}

fn main() {
    let s = no_dangle();  // s owns the String
}  // s dropped here - clean!
