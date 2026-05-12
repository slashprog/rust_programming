fn main() {
    let mut x = String::from("Hello, Rust!");

    let y = &mut x; // This creates a mutable reference to x, allowing us to modify the value of x through y

    println!("The value of y is: {}", y);
    y.push_str(" Welcome to Rust!");    
    println!("The value of y after modification is: {}", y);
    println!("The value of x is: {}", x); 

}