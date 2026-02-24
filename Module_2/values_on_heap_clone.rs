fn main() {
    let x = Box::new(10); // the value is stored on the heap
    let mut y = x.clone(); // x is cloned to y, x is still valid
    // clone creates a deep copy of the value on the heap

    let s = "Hello world"; // string literals are stored in the binary's read-only memory, not on the heap
    let s1 = s.to_string(); // s1 is a String allocated on the heap, cloned from s

    println!("y: {}", y);
    *y += 5;
    println!("After modification - y: {}", y);

    println!("x = {}", x); // x is still valid because it was cloned to y
}