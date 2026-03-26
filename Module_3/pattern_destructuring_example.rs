enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),
}

fn main() {
    
    // Destructuring enums
    let msg = Message::Move { x: 5, y: 10 };
    let msg2 = Message::Move { x: 15, y: 20 };
    let msg3 = Message::Write(String::from("Hello, Rust!"));
    
    match msg3 {
        Message::Quit => println!("Quit"),
        Message::Move { x, y } => println!("Move to ({}, {})", x, y),
        Message::Write(text) => println!("Text: {}", text),
        Message::ChangeColor(r, g, b) => println!("Color: {} {} {}", r, g, b),
        _ => println!("Unknown message"),
    }
}
