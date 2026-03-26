fn greet1() {
    println!("Hello, world!");
}

fn greet(name: &str) {
    println!("Hello, {}!", name);
}

fn main() {
    greet("John");
    greet1();
}
