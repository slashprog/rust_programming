fn check_negative(num: i32) -> Option<i32> {
    if num < 0 {
        Some(num)
    } else {
        None
    }
}

fn main() {
    let number = 5;
    if let Some(negative) = check_negative(number) {
        println!("The number {} is negative.", negative);
    } else {
        println!("The number {} is not negative.", number);
    }

    let another_number = -3;
    match check_negative(another_number) {
        Some(negative) => println!("The number {} is negative.", negative),
        None => println!("The number {} is not negative.", another_number),
    }
}