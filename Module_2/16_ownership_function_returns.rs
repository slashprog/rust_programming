fn main() {
    let s1 = gives_ownership();  // gets ownership from function
    
    let s2 = String::from("hello");
    let s2 = takes_and_gives_back(s2);  // s2 MOVED, s3 gets ownership
    
    println!("{}", s2);  // ERROR: s2 moved
    // println!("{}", s3);  // OK
}

fn gives_ownership() -> String {
    let some_string = String::from("yours");
    some_string  // ownership moves to caller
}

fn takes_and_gives_back(a_string: String) -> String {
    a_string  // ownership moves back to caller
}

// Pattern: Function takes ownership and returns it
// But this is cumbersome... Enter REFERENCES!
