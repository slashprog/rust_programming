fn main() {
    let s = foo(); // s is a reference to a String that will be dropped after foo() returns
    println!("s: {}", s); // error: `s` is a dangling reference

    let s = bar(); // This takes the ownership - good practice.
    println!("s: {}", s); // prints "Hello, world!"

}

// Not a good practice!
fn foo() -> &'static str {
    //let s = String::from("Hello, world!");
    let s = "Hello world";
    s // returning a reference to a local variable
}

// This is better because we return the String itself, not a reference to it. The ownership of the String is transferred to the caller, and there are no dangling references.
fn bar() -> String {
    let s = String::from("Hello, world!");
    s // returning the String itself, not a reference
}