fn testfn() -> String {
    let s = String::from("Hello, world!");
    println!("{}", s);
    s
}

fn main() {
    let r = testfn();
    println!("Returned value: {}", r);
}