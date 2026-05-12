fn divide(x :i32, y: i32) -> Result<i32, String> {
    if y == 0 {
        Err("Cannot divide by zero".to_string())
    } else {
        Ok(x / y)
    }
}

fn main() {
    let result = divide(10, 0);
    match result {
        Ok(value) => println!("Result: {}", value),
        Err(e) => println!("Error: {}", e),
    }

    let arr = [1, 2, 3];
    let index = 5;
    //println!("Accessing index {}: {:?}", index, arr[index]);

    let result = arr.get(index);
    match result {
        Some(value) => println!("Value at index {}: {}", index, value),
        None => println!("Error: Index {} is out of bounds", index),
    }
    
}