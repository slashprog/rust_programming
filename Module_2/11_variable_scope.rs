fn main() {                      // s not valid here
    let s = "hello";              // s is valid from here
    
    // do stuff with s
    println!("{}", s);
}                                 // scope ends - s is no longer valid

// Nested scopes
fn main() {
    let x = 5;
    
    {                             // inner scope starts
        let y = 10;
        println!("x = {}, y = {}", x, y);  // Both accessible
    }                             // y is dropped here
    
    // println!("{}", y);          // ERROR: y not in scope
    println!("x = {}", x);         // OK, x still valid
}
