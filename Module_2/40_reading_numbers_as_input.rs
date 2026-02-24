use std::io;

fn main() {
    let mut input = String::new();
    
    println!("Enter a number:");
    io::stdin().read_line(&mut input).unwrap();
    
    // Parse the input (trim to remove newline)
    let number: i32 = input
        .trim()
        .parse()
        .expect("Please enter a valid number");
    
    println!("You entered: {}, doubled: {}", number, number * 2);
}