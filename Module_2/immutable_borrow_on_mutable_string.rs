fn main() {
    let mut s = String::from("Hello, world!");

    // We can have multiple immutable references to the same data
    let r1 = &s;
    let r2 = &s;

    s.push_str(" This is a mutable string.");

    println!("r1: {}, r2: {}", r1, r2);

}
// You cannot mutate a string while you have immutable references to it. This code will not compile because we are trying to mutate `s` while we have immutable references `r1` and `r2` to it. 
// Rust's borrowing rules prevent this to ensure memory safety.
