fn main() {
    let mut s = String::from("Hello");

    let r1 = &mut s; // First mutable borrow
    let r2 = &mut s; // Second mutable borrow -> ERROR!

    r1.push_str(" world");
    r2.push_str("!"); 
}