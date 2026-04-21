// enum Result<T, E> {
//   Ok(T),
//   Err(E),
// }


fn add(x: i32, y: i32) -> Result<i32, String> {
    if x < 0 || y < 0 {
        // Return early if either x or y is negative
        return Err("Negative numbers are not allowed".to_string());
    }
    Ok(x + y)
}

fn main() {
    let result = add(10, 20);
    match result {
        Ok(value) => println!("Result: {}", value),
        Err(e) => println!("Error: {}", e),
    }
}
