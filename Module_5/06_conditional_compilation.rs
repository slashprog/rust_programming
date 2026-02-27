// src/lib.rs
#![cfg_attr(not(feature = "std"), no_std)]

#[cfg(feature = "serde")]
use serde::{Serialize, Deserialize};

#[cfg_attr(feature = "serde", derive(Serialize, Deserialize))]
pub struct Config {
    pub timeout: u32,
    pub retries: u8,
}

#[cfg(feature = "std")]
impl Config {
    pub fn from_file(path: &str) -> Result<Self, std::io::Error> {
        // Implementation using std::fs
        todo!()
    }
}

#[cfg(not(feature = "std"))]
impl Config {
    pub fn default() -> Self {
        Config {
            timeout: 30,
            retries: 3,
        }
    }
}
