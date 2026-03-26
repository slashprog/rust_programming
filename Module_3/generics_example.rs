fn square<T: std::ops::Mul<Output = T> + Copy>(x: T) -> T {
    x * x
}

fn main() {
    println!("The square of 5 is: {}", square(5));
    println!("The square of 5.2 is: {}", square(5.2));
}