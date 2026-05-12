fn testfn(s: String) {
    println!("In testfn: The value of s is: {}", s);
}

fn main() {
    let a = String::from("Hello, Rust!");

    println!("In main: The value of a is: {}", a);
    //testfn(a); // This moves the ownership of the string to the function

    testfn(a.clone()); // This creates a clone of the string, allowing both main and testfn to have their own copies
    println!("Back in main: The value of a is: {}", a); // This will cause a compile-time error because a has been moved
}