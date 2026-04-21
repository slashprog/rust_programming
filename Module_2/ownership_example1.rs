fn main() {
    let x = 5; // x is an integer, which is a Copy type
    let y = x; // x is copied to y
    println!("x: {}, y: {}", x, y); // Both x and y can be used

    let x1 = Box::new(5); // x1 is a Box, which is a non-Copy type
    let y1 = x1; // x1 is moved to y1
    println!("y1: {}", y1); // y1 can be used
    // println!("x1: {}", x1); // This will cause a compile-time error

    let s1 = String::from("Hello, world!");

    println!("s1: {}", s1);

    let s2 = s1; // s1 is moved to s2

    println!("s2: {}", s2);
    // println!("s1: {}", s1); // This will cause a compile-time error    


    let s1 = "Hello, world!"; // s1 is a string literal, which is a &str type
    let s2 = s1; // s1 is copied to s2
    println!("s1: {}, s2: {}", s1, s2); // Both s1 and s2 can be used



}
