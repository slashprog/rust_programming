use std::io;

fn main() {
    let mut input = String::new();
    
    println!("Enter space-separated numbers:");
    io::stdin().read_line(&mut input).unwrap();
    
    let numbers: Vec<i32> = input
        .trim()
        .split_whitespace()
        .map(|s| s.parse().expect("Parse error"))
        .collect();
    
    println!("Sum: {}", numbers.iter().sum::<i32>());
}