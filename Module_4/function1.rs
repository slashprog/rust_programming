fn add<T: std::ops::Add<Output = T>>(x: T, y: T) -> T {
    x + y
}

fn main() {
    let result = add(5, 3);
    println!("The sum is: {}", result);
}