fn testfn(s: &mut String) { // testfn borrows a reference to a String
    s.push_str(" Welcome to Rust!"); // Modifying the borrowed String
    println!("In testfn: The value of s is: {}", s);

}

fn testfn2(s: &mut String) { // testfn borrows a reference to a String
    s.push_str(" Welcome back to Rust!"); // Modifying the borrowed String
    println!("In testfn2: The value of s is: {}", s);

}


fn main() {
    let mut a = String::from("Hello, Rust!");

    println!("In main: The value of a is: {}", a);
 
    testfn(&mut a); // We pass a reference to a, allowing testfn to borrow it without taking ownership
    testfn2(&mut a); // We pass a reference to a, allowing testfn2 to borrow it without taking ownership
    // a.push_str(" This is a test."); // Modifying a after testfn has borrowed it
    println!("In main: The value of a after testfn is: {}", a);
}
