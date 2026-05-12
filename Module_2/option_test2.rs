fn testfn() -> Option<i32> {
    Some(56)
}

fn main() {
    let result = testfn().unwrap_or(0);

    println!("The value is: {}", result);
//    match result {
//        Some(value) => println!("The value is: {}", value),
//        None => println!("No value found"),
//    }
}