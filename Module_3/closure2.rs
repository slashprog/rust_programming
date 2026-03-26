fn main() {
    let s = String::from("John");

    let print_s = || println!("Hello, {}", s);  // Closure that captures s by reference
    print_s();  // Calls the closure to print s

    println!("The original string is still accessible: {}", s);  // s is still accessible here

    let print_s_move = move || println!("Hello, {}", s);  // Closure that captures s by value (moves it)
    print_s_move();  // Calls the closure to print s

    // println!("The original string is no longer accessible: {}", s);  // This will cause a compile error because s has been moved
}