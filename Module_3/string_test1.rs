fn main() {

    let mut s = String::from("Hello, world!");

    let s2 :&str = &s[..5];
    println!("{}", s2);

    s.push_str(" Welcome to Rust.");

    println!("{}", s);

    println!("Length of s is {}", s.len());
    println!("Capacity of s is {}", s.capacity());

    s.clear();
    println!("After clearing, s is '{}'", s);
    println!("Length of s after clearing is {}", s.len());
    println!("Capacity of s after clearing is {}", s.capacity());
    s.shrink_to_fit(); // Use this sparingly, as it may involve reallocating memory
    println!("Capacity of s after shrinking is {}", s.capacity());

    s.push_str("New content");

    println!("{:?}", s.bytes());
    println!("{:?}", s.chars());

    for c in s.chars() {
        print!("{} ", c);
    }

//  Strings are not directly iterable, but you can iterate over their characters or bytes.
//    for v in s.iter() {
//        print!("{} ", v);
//    }
}