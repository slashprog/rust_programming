fn main() {
    let mut x = String::from("Hello, Rust!");

    let mut y = &x;

    println!("The value of x is: {}", x);
    println!("The value of y is: {}", y);
    x.push_str(" Welcome to Rust!"); 
    println!("After modifying x:");
    println!("The value of x is: {}", x);
    println!("The value of y is: {}", y);
}