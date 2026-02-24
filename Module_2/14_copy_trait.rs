fn main() {
    // Simple types implement Copy
    let x = 5;
    let y = x;  // COPY, not move
    
    println!("x = {}, y = {}", x, y);  // Both valid!
    
    // Types that implement Copy:
    // - All integers: i32, u32, etc.
    // - Booleans: bool
    // - Floats: f32, f64
    // - Characters: char
    // - Tuples of Copy types: (i32, i32)
    // - Arrays of Copy types: [i32; 5]
    
    // Can't implement Copy if type has Drop (like String)
    // #[derive(Copy)]  // ERROR on String field!
    struct CannotCopy {
        data: String,  // String doesn't implement Copy
    }
}
