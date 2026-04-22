fn square<T>(x: T) -> T
where
    T: std::ops::Mul<Output = T> + Copy,
{
    x * x
}

fn main() {
    let result = square(5);
    println!("The square of 5 is: {}", result);

    let result = square(3.14);
    println!("The square of 3.14 is: {}", result);

}