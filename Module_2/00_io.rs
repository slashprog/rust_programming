use std::io;

fn main() {
    let mut input = String::new();
    
    println!("Length of input string: {}, address = {:p}", input.len(), &input);

    println!("Enter your name:");
    io::stdin() // Accesses the standard input stream (keyboard input)
        .read_line(&mut input)  // Reads a line of input from the user and stores it in the `input` variable
        .expect("Failed to read line"); // .expect() causes the program to panic if reading input fails
    
    println!("Length of input string: {}, address = {:p}", input.len(), &input);

    println!("Hello, {}!", input.trim());  // trim() removes newline
    eprintln!("Welcome to Rust programming (stderr)!");
}