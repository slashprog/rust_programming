// Option: Value or nothing (no null pointers!)
enum Option<T> {
    Some(T),
    None,
}

// Result: Success or failure
enum Result<T, E> {
    Ok(T),
    Err(E),
}

fn main() {
    // Using Option
    let some_number = Some(5);
    let some_string = Some("hello");
    let absent_number: Option<i32> = None;
    
    // Using Result
    fn divide(a: f64, b: f64) -> Result<f64, String> {
        if b == 0.0 {
            Err(String::from("Division by zero"))
        } else {
            Ok(a / b)
        }
    }
    
    match divide(10.0, 2.0) {
        Ok(result) => println!("Result: {}", result),
        Err(error) => println!("Error: {}", error),
    }
    
    // The real power: you MUST handle the None/Err case!
    // let x: i32 = None;  // ERROR! No automatic conversion
}
