fn main() {
    let mut x = 10;
    println!("The value of x is: {}", x);
    let y = x; // This creates a copy of x, since i32 implements the Copy trait
    println!("The value of y is: {}", y);

    x = 20; // Modifying x does not affect y
    println!("After modifying x:");
    println!("The value of x is: {}", x);
    println!("The value of y is still: {}", y);

}