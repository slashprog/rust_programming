fn main() {

    // str slices are immutable and fixed in size, so we cannot modify them directly.
    let mut s = "Hello, world!";

    s.push_str(" Welcome to Rust.");

    println!("{}", s);
}