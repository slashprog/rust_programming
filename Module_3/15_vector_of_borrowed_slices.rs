fn main() {
    let s1 = String::from("Hello");
    let mut v = Vec::new();

    v.push(&s1[0..2]); // Borrowing a slice of s1
    
    // drop(s1); // ERROR: v still holds a reference to s1!
}