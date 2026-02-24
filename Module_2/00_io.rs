use std::io;

fn main() {
    let mut input = String::new();
    
    println!("Length of input string: {}, address = {:p}", input.len(), &input);

    println!("Enter your name:");
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    
    println!("Length of input string: {}, address = {:p}", input.len(), &input);

    println!("Hello, {}!", input.trim());  // trim() removes newline
    eprintln!("Welcome to Rust programming (stderr)!");
}