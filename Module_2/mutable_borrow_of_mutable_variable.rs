fn main() {
    let mut x = String::from("Hello");
    
    let y = &mut x; // Borrowing x, y is a mutable borrow of x
    //let z = &mut x; // This will cause a compile-time error because x is already borrowed mutably by y
    // let a = &x; // This will also cause a compile-time error because x is already borrowed mutably by y

    y.push_str(", world!"); // Modifying x through y
    println!("y = {}", y); // This works because y is a reference to x
    
    x.push_str("! Welcome to borrowing rules.");
    println!("x = {}", x); 

}

// Borrow rules in Rust:
// 1. You can have as many immutable references (borrows) to a variable.
// 2. But if the variable is mutable:
//    - You can have only one mutable reference (mutable borrow) to it at a time.
//    - Or you can have any number of immutable references (immutable borrows), but not both at the same time.
// 3. If you have a mutable / immutable borrow to a mutable variable, 
//     you cannot modify the variable until all borrows end their lifetimes.