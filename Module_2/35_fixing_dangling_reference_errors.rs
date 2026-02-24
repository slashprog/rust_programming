// PROBLEM: Dangling reference
// fn dangle() -> &String {
//     let s = String::from("hello");
//     &s
// }

// SOLUTION 1: Return String directly (transfer ownership)
fn no_dangle() -> String {
    let s = String::from("hello");
    s  // Ownership moves out
}

// SOLUTION 2: Accept a reference parameter
fn use_string(s: &String) -> &String {
    // Do something with s
    s  // Return the reference (lifetime tied to input)
}

// SOLUTION 3: Return a string literal (static lifetime)
fn get_greeting() -> &'static str {
    "hello"  // String literal lives forever
}

fn main() {
    let s1 = no_dangle();
    println!("{}", s1);
    
    let s2 = String::from("world");
    let s3 = use_string(&s2);
    println!("{}", s3);
    
    let s4 = get_greeting();
    println!("{}", s4);
}
