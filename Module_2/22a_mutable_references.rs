fn main() {
    let mut s = String::from("hello");
    
    println!("s = {}", s);  // OK, s valid
    // One mutable reference
    modify(&mut s);  // Pass mutable reference to function
    println!("s = {}", s);  // OK, s modified by function
}

fn modify(s: &mut String) {
    s.push_str("!");  // Can modify through mutable reference
    drop(s)
}
