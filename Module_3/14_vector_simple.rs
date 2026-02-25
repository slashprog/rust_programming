fn main() {
    let mut v = Vec::new();
    v.push(String::from("Rust"));
    v.push(String::from("is"));
    v.push(String::from("safe"));
} 
// When 'v' goes out of scope, it drops every String inside it, 
// then it drops itself. Everything is cleaned up!