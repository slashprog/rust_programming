fn main() {
    let mut x = 5;
    println!("Hello, world!");

    {
        println!("Inside new block: Value of x: {}", x);
        let x = 10; // Shadowing: this is a new variable, not a mutation of the old one
        println!("Inside new block: Value of x: {}", x);
        let y = 100;
        println!("Inside new block: Value of y: {}", y);
    }
    x = 15;
    println!("Outside block: Value of x: {}", x); // Still 5, not affected by the inner shadowing
}
