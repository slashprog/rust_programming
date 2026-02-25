fn main() {
    let mut s = String::from("Hello");

    let r1 = &s; 
    println!("{}", r1); // r1's life ends here because it's never used again.

    let r2 = &mut s;    // This is now VALID!
    r2.push_str(" world");
}