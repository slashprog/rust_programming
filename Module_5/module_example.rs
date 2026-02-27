mod math {
    fn add(x: i32, y: i32) -> i32 {
        x + y
    }

    pub fn multiply(x: i32, y: i32) -> i32 {
        x * y
    }

    pub mod advanced {
        pub fn power(base: i32, exponent: u32) -> i32 {
            base.pow(exponent)
        }
    }
}

fn main() {
    let sum = math::add(5, 3); // This will cause an error because `add` is private
    let product = math::multiply(5, 3);
    let power = math::advanced::power(2, 3);

    println!("Sum: {}", sum);
    println!("Product: {}", product);
    println!("Power: {}", power);
}