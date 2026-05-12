fn testfn() -> &'static String {
    let s = String::from("Hello, world!");
    &s
}

fn main() {
    let s_ref = testfn();
    println!("{}", s_ref);
}