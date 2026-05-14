use std::ops::Add;

fn add<'a>(x: &'a impl Add, y: &'a impl Add) -> &'a impl Add {
    x + y
}


fn main() {
    let (x, y) = (5, 10.0);
    let result = add(&x, &y);
    println!("The sum of {} and {} is {}", x, y, result);
}