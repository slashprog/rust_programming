fn main() {
    let mut x = String::from("Hello, Rust!");

    let mut y = &mut x;

    println!("The value of y is: {}", y);
    y.push_str(" Welcome to Rust!"); // This will cause a compile-time error because y is an immutable reference to x   
    println!("The value of y after modification is: {}", y);

}