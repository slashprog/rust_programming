macro_rules! greet {
    ($name:expr) => {
        println!("Hello, {}!", $name);
    };
}

fn main() {
    greet!("Alice");   // Hello, Alice!
    greet!("Bob");     // Hello, Bob!
}