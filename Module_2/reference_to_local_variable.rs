fn testfn() -> &'static String {
    let s = String::from("Hello");

    let r = &s;  // r is a reference to s, not a copy or move
    println!("Reference r points to: {}", r);
    println!("Original string s is still accessible: {}", s);
    return r;
}

fn main() {
    let x = testfn();
    println!("Reference r in main points to: {}", x);
}