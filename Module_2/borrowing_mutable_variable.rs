fn main() {
    let mut x = String::from("Hello");
    
    let y = &x; // Borrowing x, y is an immutable borrow of x

    println!("y = {}", y); // This works because y is a reference to x

    y.push_str(", brand new"); // This does not work because y is an immutable reference to x, and we cannot modify x through y
    
    // x.push_str(", world!"); // This modifies x, but y is still a reference to the original value of x before modification

    println!("x = {}", x); // This works because x is still valid
    // println!("y = {}", y); // This does not work because y is a reference to the original value of x, which has been modified

   //let z = &x; // Borrowing x, z is a reference to x
   //println!("z = {}", z); // This works because z is a reference to x
   //let w = &x; // Another reference to x
   //println!("w = {}", w); // This also works because w is a reference to x  
   //println!("y = {}, z = {}, w = {}", y, z, w); // All three can be used together because they are references to the same data
}
// NOTE: In case you have an immutable borrow of a variable, 
// you cannot modify the original variable until all immutable borrows end their lifetime. 
// This is because Rust enforces borrowing rules to ensure memory safety. 
// In this example, since y is an immutable borrow of x, we cannot modify x until y finishes its lifetime.
