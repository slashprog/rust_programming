fn main() {
    let mut s = String::from("Hello");

    let r1 = &s;      // Immutable borrow (Reader)
    let r2 = &mut s;  // Mutable borrow (Writer) -> ERROR!

    println!("{}", r1); // Reader tries to use the data
    r2.push_str(" world");
}