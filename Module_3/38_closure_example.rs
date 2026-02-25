fn main() {
    // Basic closure syntax
    let add_one = |x: i32| -> i32 { x + 1 };
    let add_one = |x| x + 1;  // Type inference
    
    println!("{}", add_one(5));
    
    // Closures can capture environment
    let x = 5;
    let add_x = |y| y + x;  // Captures x by reference
    println!("{}", add_x(10));  // 15
    
    // Different capture modes
    let s = String::from("hello");
    let consume = move || {  // move forces ownership transfer
        println!("{}", s);
    };  // s is moved into closure
    consume();
    // println!("{}", s);  // ERROR: s moved!
    
    // Closure traits
    let double = |x| x * 2;
    
    // Each closure has its own unique type
    fn call_twice<F: Fn(i32) -> i32>(f: F, x: i32) -> i32 {
        f(f(x))
    }
    
    println!("{}", call_twice(|x| x * 2, 5));  // 20
}
