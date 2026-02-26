// The ? operator is syntactic sugar for:

// This:
fn foo() -> Result<T, E> {
    let x = some_result?;
    // ...
}

// Expands to:
fn foo() -> Result<T, E> {
    let x = match some_result {
        Ok(val) => val,
        Err(err) => return Err(From::from(err)),  // Converts error types!
    };
    // ...
}

// Works with Option too!
fn bar() -> Option<i32> {
    let x = some_option?;  // Returns None if some_option is None
    Some(x * 2)
}

// Example of error conversion
use std::num::ParseIntError;

fn parse_and_double(s: &str) -> Result<i32, ParseIntError> {
    let n: i32 = s.parse()?;  // Returns ParseIntError
    Ok(n * 2)
}

// Can mix different error types with proper conversion
use std::io;

fn read_and_parse() -> Result<i32, Box<dyn std::error::Error>> {
    let mut s = String::new();
    io::stdin().read_line(&mut s)?;      // io::Error → Box<dyn Error>
    let n: i32 = s.trim().parse()?;      // ParseIntError → Box<dyn Error>
    Ok(n)
}