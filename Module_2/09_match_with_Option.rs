fn main() {
    let some_number = Some(5);
    let no_number: Option<i32> = None;
    
    // Safe handling of Option
    fn double_if_exists(x: Option<i32>) -> Option<i32> {
        match x {
            Some(value) => Some(value * 2),
            None => None,
        }
    }
    
    println!("{:?}", double_if_exists(some_number));  // Some(10)
    println!("{:?}", double_if_exists(no_number));    // None
    
    // Extracting value with match (safe unwrapping)
    let result = match some_number {
        Some(v) => v,
        None => 0,
    };
    
    // This would PANIC if None:
    // let unsafe_result = some_number.unwrap();
}