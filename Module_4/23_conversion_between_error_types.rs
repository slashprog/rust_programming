use std::fs::File;
use std::io::{self, Read};
use std::num::ParseIntError;

#[derive(Debug)]
enum AppError {
    Io(io::Error),
    Parse(ParseIntError),
    Message(String),
}

// Implement From for automatic conversion
impl From<io::Error> for AppError {
    fn from(error: io::Error) -> Self {
        AppError::Io(error)
    }
}

impl From<ParseIntError> for AppError {
    fn from(error: ParseIntError) -> Self {
        AppError::Parse(error)
    }
}

impl From<String> for AppError {
    fn from(message: String) -> Self {
        AppError::Message(message)
    }
}

// Now ? works automatically!
fn read_number_from_file() -> Result<i32, AppError> {
    let mut file = File::open("number.txt")?;  // io::Error → AppError
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;        // io::Error → AppError
    let num = contents.trim().parse()?;         // ParseIntError → AppError
    Ok(num)
}

// Custom conversion for more control
impl From<&str> for AppError {
    fn from(message: &str) -> Self {
        AppError::Message(message.to_string())
    }
}
