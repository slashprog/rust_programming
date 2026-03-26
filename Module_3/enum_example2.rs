enum Output {
    Twice(i32),
    Square(i32),
    Error(String),
}

fn calc(val: i32) -> Output {
    if val <= 0 {
        Output::Error(String::from("Negative value is not allowed"))
    } else if val > 0 && val < 10 {
        Output::Square(val * val)
    } else {
        Output::Twice(val * 2)
    }
}

fn main() {
    let result = calc(0);
    match result {
        Output::Twice(val) => println!("The result is: {}", val),
        Output::Square(val) => println!("The result is: {}", val),
        Output::Error(msg) => println!("Error: {}", msg),
    }
}

