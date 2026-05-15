mod math;
fn main() {
    println!("Hello, world!");
    let sum = math::add(5, 3);
    println!("The sum of 5 and 3 is: {}", sum);

    let difference = math::subtract(5, 3);
    println!("The difference of 5 and 3 is: {}", difference);
}
