fn main() {
    let s1 = String::from("hello");
    let (s2, len) = calculate_length(s1);
    println!("'{}' length is {}", s2, len);
}

fn calculate_length(s: String) -> (String, usize) {
    let length = s.len();
    (s, length)  // Must return string to give ownership back
}

// WITH REFERENCES - much cleaner!
fn main() {
    let s1 = String::from("hello");
    let len = calculate_length(&s1);  // Pass REFERENCE
    println!("'{}' length is {}", s1, len);  // s1 still valid!
}

fn calculate_length(s: &String) -> usize {  // s is REFERENCE
    s.len()  // No need to return ownership
}  // s goes out of scope, but since it's a reference,
   // nothing happens to the value it points to
