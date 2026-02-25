struct Point {
    x: i32,
    y: i32,
}

enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),
}

fn main() {
    let point = Point { x: 10, y: 20 };
    
    // Destructuring structs
    match point {
        Point { x, y } => println!("({}, {})", x, y),
    }
    
    // With renamed variables
    match point {
        Point { x: a, y: b } => println!("({}, {})", a, b),
    }
    
    // Partial destructuring
    match point {
        Point { x, .. } => println!("x is {}", x),  // ignore y
    }
    
    // Destructuring enums
    let msg = Message::Move { x: 5, y: 10 };
    
    match msg {
        Message::Quit => println!("Quit"),
        Message::Move { x, y } => println!("Move to ({}, {})", x, y),
        Message::Write(text) => println!("Text: {}", text),
        Message::ChangeColor(r, g, b) => println!("Color: {} {} {}", r, g, b),
    }
}
