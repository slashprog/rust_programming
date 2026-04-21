fn main() {
    let mut s1 = String::from("Hello, world");
    let s2 :&str = &s1; // s2 borrows s1 (slice of s1)
    let s3 = &s1; // s3 also borrows s1 (String borrow of s1)
    
    println!("s1: {}, s2: {}, s3: {}", s1, s2, s3); // All s1, s2, and s3 can be used

    println!("s1 type: {}, s2 type: {}, s3 type: {}",
              type_of(&s1), type_of(&s2), type_of(&s3)); // All s1, s2, and s3 have the same type   

    // s1.push_str("!"); // Modifying s1 is allowed, but it will not affect s2 and s3

    let s4 = s1;

    println!("s1: {}, s2: {}, s3: {}", s1, s2, s3); // All s1, s2, and s3 can still be used
}

fn type_of<T>(_: &T) -> &str {
    std::any::type_name::<T>()
}