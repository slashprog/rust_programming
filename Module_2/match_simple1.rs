//enum Result {
//    Ok(i32),
//    Err(String)
//}

//enum Option<T> {
//    Some(T),
//    None,
//}

fn main() {
    let x = 5;

    match x {
        1 => println!("One"),
        2 => println!("Two"),
        3 => println!("Three"),
        5 | 6 => println!("Five or Six"),
        7..=10 => println!("Seven to Ten"),
        _ => println!("Other"),
    }

    let result = Some(10);
    match result {
        Some(value) if value > 5 => println!("Value is greater than 5: {}", value),
        Some(value) => println!("Value is 5 or less: {}", value),
        None => println!("No value"),
    }


}