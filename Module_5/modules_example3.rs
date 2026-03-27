// Exercise: 1
// Create a module - called mathlib that contains the following public functions:
// - add(a: i32, b: i32) -> i32
// - subtract(a: i32, b: i32) -> i32
// - multiply(a: i32, b: i32) -> i32
// - divide(a: i32, b: i32) -> Option<i32> (
// - power(base: i32, exponent: u32) -> i32

// - Add a submodule - called advanced that contains the following public functions:
// - factorial(n: u32) -> u32
// - fibonacci(n: u32) -> u32
// - sqrt(n: f64) -> f64

// Test this module using a main function.
mod mathlib {
    pub fn add(a: i32, b: i32) -> i32 {
        a + b
    }

    pub fn subtract(a: i32, b: i32) -> i32 {
        a - b
    }

    pub fn multiply(a: i32, b: i32) -> i32 {
        a * b
    }

    pub fn divide(a: i32, b: i32) -> Option<i32> {
        if b != 0 {
            Some(a / b)
        } else {
            None
        }
    }

    pub mod advanced {
        pub fn factorial(n: u32) -> u32 {
            (1..=n).product()
        }

        pub fn fibonacci(n: u32) -> u32 {
            match n {
                0 => 0,
                1 => 1,
                _ => fibonacci(n - 1) + fibonacci(n - 2),
            }
        }

        pub(in super) fn power(base: f64, exponent: f64) -> f64 { // Fails because visibility can be restricted only to ancestral modules.
            base.powf(exponent)
        }

    }

    pub fn sqrt(n: f64) -> f64 {
        advanced::power(n, 0.5)
    }


}

fn main() {
    // Testing basic math functions
    let sum = mathlib::add(5, 3);
    let difference = mathlib::subtract(5, 3);
    let product = mathlib::multiply(5, 3);
    let quotient = mathlib::divide(5, 3);
    // let power_result = mathlib::advanced::power(2.0, 3.0);

    println!("5 + 3 = {}", sum);
    println!("5 - 3 = {}", difference);
    println!("5 * 3 = {}", product);
    println!("5 / 3 = {:?}", quotient);
    // println!("2^3 = {}", power_result);

    // Testing advanced math functions
    let factorial_result = mathlib::advanced::factorial(5);
    let fibonacci_result = mathlib::advanced::fibonacci(10);
    let sqrt_result = mathlib::sqrt(16.0);

    println!("Factorial of 5 is {}", factorial_result);
    println!("Fibonacci of 10 is {}", fibonacci_result);
    println!("Square root of 16 is {}", sqrt_result);
}   