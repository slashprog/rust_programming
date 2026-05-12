fn main() {
    let mut x = String::from("Hello, Rust!");

 
    let y = &x; // This creates an immutable reference to x, allowing us to read the value of x through y
    let z = &x;
 
    println!("The value of y is: {}", y);
    println!("The value of z is: {}", z);


    x.push_str(" Welcome to ownership and borrowing.");

    println!("The value of x is: {}", x);
 
 
}