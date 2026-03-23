fn main() {
    let x :u8 = 10;
    println!("The value of x is: {}", x);
    let x :f32 =  20.0;  // Shadowing: we can reuse the same variable name
    println!("The value of x is: {}", x);
}
