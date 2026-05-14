macro_rules! describe {
    // Pattern 1: no argument
    () => {
        println!("No value provided.");
    };
    // Pattern 2: one argument
    ($val:expr) => {
        println!("Value is: {}", $val);
    };
    // Pattern 3: two arguments
    ($key:expr, $val:expr) => {
        println!("{} = {}", $key, $val);
    };
}

fn main() {
    describe!();                  // No value provided.
    describe!(42);                // Value is: 42
    describe!("score", 100);      // score = 100
}