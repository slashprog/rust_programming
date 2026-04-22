// Simple enum
//enum IpAddrKind {
//    V4,
//    V6,
//}

// Enum with associated data
enum IpAddr {
    V4(u8, u8, u8, u8),  // Tuple variant
    V6(String),           // Tuple variant
}

// Enum with different types per variant
enum Message {
    Quit,                       // No data
    Move { x: i32, y: i32 },    // Named fields
    Write(String),              // Tuple variant
    ChangeColor(i32, i32, i32), // Tuple variant
}
// Methods on enums
impl Message {
    fn call(&self) {
        match self {
            Message::Quit => println!("Quit"),
            Message::Move { x, y } => println!("Move to ({}, {})", x, y),
            Message::Write(text) => println!("Write: {}", text),
            Message::ChangeColor(r, g, b) => println!("Color: {} {} {}", r, g, b),
        }
    }
}


fn main() {
   // let localhost = IpAddr::V4(127, 0, 0, 1);
   // let loopback = IpAddr::V6(String::from("::1"));
    
    let msg = Message::Move { x: 10, y: 20 };
    msg.call();

    let msg_write = Message::Write(String::from("Hello, world!"));
    msg_write.call();

}