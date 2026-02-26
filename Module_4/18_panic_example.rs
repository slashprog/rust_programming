/ panic! - for unrecoverable errors
fn main() {
    panic!("crash and burn");  // Program terminates with message
}

// Common panic scenarios:
fn main() {
    let v = vec![1, 2, 3];
    v[99];  // panic! - index out of bounds
    
    // Unwrap on None/Err
    let none: Option<i32> = None;
    // none.unwrap();  // panic!
    
    let err: Result<i32, &str> = Err("oops");
    // err.unwrap();  // panic!
    
    // expect - custom panic message
    let result = some_fallible_function()
        .expect("Failed to compute important value");
}

// When to panic:
// - Examples/prototypes
// - Tests (unwrap is fine)
// - When error indicates bug in your code
// - When recovery is impossible

// Configuring panic behavior
// Cargo.toml:
// [profile.release]
// panic = "abort"  # Don't unwind, just abort