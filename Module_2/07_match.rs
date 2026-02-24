fn main() {
    let number = 3;
    
    // Basic match
    match number {
        1 => println!("One!"),
        2 => println!("Two!"),
        3 => println!("Three!"),
        _ => println!("Something else!"),  // Default case
    }
    
    // match as expression
    let description = match number {
        1 => "one",
        2 => "two",
        3 => "three",
        _ => "many",
    };
    
    println!("{} is {}", number, description);
    
    // Multiple patterns
    match number {
        1 | 2 => println!("One or two"),
        3..=5 => println!("Three through five"),
        _ => println!("Other"),
    }
}