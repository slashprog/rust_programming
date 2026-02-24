use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut lines = Vec::new();
    
    println!("Enter lines (Ctrl+D to stop):");
    for line in stdin.lock().lines() {
        match line {
            Ok(input) => {
                if input.trim().is_empty() {
                    break;  // Empty line stops input
                }
                lines.push(input);
            }
            Err(error) => eprintln!("Error: {}", error),
        }
    }
    
    println!("You entered: {:?}", lines);
}