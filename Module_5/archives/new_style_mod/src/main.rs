mod utils;

fn main() {
    println!("Hello, world!");
    utils::helpers::greet();
    let num = 5;
    println!("The square of {} is {}", num, utils::math::square(num));
}
