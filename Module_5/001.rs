// In src/lib.rs or src/main.rs

// Define a module
mod math {
    // Items inside module are private by default
    fn add(a: i32, b: i32) -> i32 {
        a + b
    }
    
    // Public items are accessible outside
    pub fn multiply(a: i32, b: i32) -> i32 {
        a * b
    }
    
    // Nested modules
    pub mod advanced {
        pub fn square(x: i32) -> i32 {
            x * x
        }
    }
}

// Using modules
fn main() {
    // Private function - ERROR!
    // let sum = math::add(5, 3);
    
    // Public function - OK
    let product = math::multiply(5, 3);
    
    // Nested module
    let squared = math::advanced::square(5);
    
    // Bring into scope with 'use'
    use math::multiply;
    let result = multiply(5, 3);
}
