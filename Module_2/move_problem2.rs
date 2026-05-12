fn testfn(s: String) -> String {
    println!("In testfn: The value of s is: {}", s);
    s
}

fn main() {
    let a = String::from("Hello, Rust!");

    println!("In main: The value of a is: {}", a);
 
    let a = testfn(a);
    println!("In main: The value of a after testfn is: {}", a);
}
