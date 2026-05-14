fn testfn<'a>() -> &'a str {
    let s = String::from("Hello, world!");
    println!("{}", s);
    
    let s2 = &s[..5]; // Borrowing a slice of the string
    println!("Slice of the string: {}", s2);
    s2
}

fn main() {
    let r = testfn();
    println!("Returned value: {}", r);
}