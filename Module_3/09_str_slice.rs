fn main() {
    let s = String::from("Hello world");

    let hello: &str = &s[0..5];  // Points to "Hello"
    let world: &str = &s[6..11]; // Points to "world"

    println!("First word: {}, Second word: {}", hello, world);
}