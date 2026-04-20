fn main() {
    let x: i32 = 5;
    let y: i16 = 10;
    let z = x + y as i32; // Coercing y to i32 before addition

    println!("Result: {}", z);
}