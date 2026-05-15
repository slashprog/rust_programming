mod util;

fn main() {
    println!("Hello, world!");
    let sum = util::math::add(5, 3);
    println!("The sum of 5 and 3 is: {}", sum);

    let difference = util::math::subtract(5, 3);
    println!("The difference of 5 and 3 is: {}", difference);
}
