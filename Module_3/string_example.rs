fn main() {
    let mut s = String::from("Hello, world!");  // Allocates a new String on the heap
    let s1 = "Hello, world!"; // Represents a string literal in the binary's read-only memory

    let s2 = "Hello, world!".to_string(); // Allocates a new String on the heap

    println!("Type of s: {}", std::any::type_name_of_val(&s));
    println!("s = {:?}", s);

    println!("Length: {}", s.len());
    println!("Capacity: {}", s.capacity());

    s.pop();
    s.pop();
    s.pop();
    println!("s after pop: {:?}", s);
    println!("Length: {}", s.len());
    println!("Capacity: {}", s.capacity());

    println!("Type of s1: {}", std::any::type_name_of_val(&s1));
    println!("s1 = {:?}", s1);  
    println!("Length of s1: {}", s1.len());
    // println!("Capacity of s1: {}", s1.capacity());


}