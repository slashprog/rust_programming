mod math {
    pub fn add(a: i32, b: i32) -> i32 {
        a + b
    }

    pub fn subtract(a: i32, b: i32) -> i32 {
        a - b
    }

    fn multiply(a: i32, b: i32) -> i32 {
        a * b
    }
}

fn main() {
    println!("Hello, world!");
    let sum = math::add(5, 3);
    println!("The sum of 5 and 3 is: {}", sum);

    let difference = math::subtract(5, 3);
    println!("The difference of 5 and 3 is: {}", difference);
}
