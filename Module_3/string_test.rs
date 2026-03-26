fn main() {
    let mut s = String::from("Hello, world!");
    println!("{}", s);

    s.push_str(" Welcome to Rust programming.");
    println!("{}", s);

    println!("{:?}", s.chars().nth(s.len() - 5).unwrap_or('-'));
    println!("{:?}", s.bytes().nth(0).unwrap_or(0));

    for c in s.chars() {
        print!("{} ", c);
    }
    
}