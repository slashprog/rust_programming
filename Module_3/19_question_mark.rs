use std::fs::File;
use std::io::{self, Read};

fn read_username() -> Result<String, io::Error> {
    let mut s = String::new();
    // If open or read_to_string fails, the error is returned early!
    File::open("username.txt")?.read_to_string(&mut s)?;
    Ok(s)
}