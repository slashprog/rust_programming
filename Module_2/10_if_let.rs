fn main() {
    let some_value = Some(7);
    
    // Verbose match
    match some_value {
        Some(7) => println!("Lucky seven!"),
        _ => (),
    }
    
    // Concise if let
    if let Some(7) = some_value {
        println!("Lucky seven!");
    }
    
    // With else
    if let Some(7) = some_value {
        println!("Lucky seven!");
    } else {
        println!("Not lucky seven");
    }
    
    // Works with any pattern
    let value = 5;
    if let 5 = value {
        println!("It's five!");
    }
}
