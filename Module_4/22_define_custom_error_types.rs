use std::fmt;
use std::error::Error;

// Custom error type
#[derive(Debug)]
pub struct MyError {
    pub message: String,
    pub code: u32,
}

// Implement Display for user-friendly output
impl fmt::Display for MyError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Error {}: {}", self.code, self.message)
    }
}

// Implement std::error::Error (optional but recommended)
impl Error for MyError {}

// Can wrap other errors
#[derive(Debug)]
pub enum AppError {
    Io(std::io::Error),
    Parse(std::num::ParseIntError),
    Validation(String),
}

impl fmt::Display for AppError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            AppError::Io(e) => write!(f, "IO error: {}", e),
            AppError::Parse(e) => write!(f, "Parse error: {}", e),
            AppError::Validation(s) => write!(f, "Validation error: {}", s),
        }
    }
}

impl Error for AppError {
    fn source(&self) -> Option<&(dyn Error + 'static)> {
        match self {
            AppError::Io(e) => Some(e),
            AppError::Parse(e) => Some(e),
            AppError::Validation(_) => None,
        }
    }
}
