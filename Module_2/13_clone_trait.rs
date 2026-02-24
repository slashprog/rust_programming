fn main() {
    let s1 = String::from("hello");
    
    // Deep copy of heap data
    let s2 = s1.clone();
    
    // Both are valid now!
    println!("s1 = {}, s2 = {}", s1, s2);
    
    // Memory layout:
    // s1: [ptr1, len, cap] → "hello" (heap1)
    // s2: [ptr2, len, cap] → "hello" (heap2 - COPY!)
}

// Clone trait allows customization
#[derive(Clone)]
struct Person {
    name: String,
    age: u32,
}

fn main() {
    let p1 = Person { name: "Alice".to_string(), age: 30 };
    let p2 = p1.clone();  // Deep copy of ALL fields
}
