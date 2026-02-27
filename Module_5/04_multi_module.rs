// src/main.rs
mod math;           // Look for math.rs or math/mod.rs
mod utils;          // Look for utils.rs or utils/mod.rs

use math::algebra;
use utils::strings;

fn main() {
    println!("5 + 3 = {}", math::add(5, 3));
    println!("5 * 3 = {}", algebra::multiply(5, 3));
    println!("Hello reversed: {}", strings::reverse("Hello"));
}

// src/math.rs
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}

pub mod algebra;  // Look for math/algebra.rs or math/algebra/mod.rs

// src/math/algebra.rs
pub fn multiply(a: i32, b: i32) -> i32 {
    a * b
}

// src/utils.rs
pub mod strings;  // Look for utils/strings.rs or utils/strings/mod.rs

// src/utils/strings.rs
pub fn reverse(s: &str) -> String {
    s.chars().rev().collect()
}
