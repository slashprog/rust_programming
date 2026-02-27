use thiserror::Error;
use std::io;

/// Custom error types for the application
#[derive(Error, Debug)]
pub enum AppError {
    #[error("IO error: {0}")]
    Io(#[from] io::Error),
    
    #[error("Serialization error: {0}")]
    Serialization(#[from] bincode::Error),
    
    #[error("Connection error: {0}")]
    Connection(String),
    
    #[error("Protocol error: {0}")]
    Protocol(String),
    
    #[error("Server error: {0}")]
    Server(String),
    
    #[error("Client error: {0}")]
    Client(String),
    
    #[error("Invalid message: {0}")]
    InvalidMessage(String),
    
    #[error("Disconnected")]
    Disconnected,
}

/// Result type alias for the application
pub type AppResult<T> = Result<T, AppError>;
