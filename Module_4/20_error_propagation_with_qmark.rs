use std::fs::File;
use std::io::{self, Read};

// Without ? - verbose
fn read_username_from_file_verbose() -> Result<String, io::Error> {
    let file_result = File::open("hello.txt");
    
    let mut file = match file_result {
        Ok(file) => file,
        Err(e) => return Err(e),
    };
    
    let mut username = String::new();
    
    match file.read_to_string(&mut username) {
        Ok(_) => Ok(username),
        Err(e) => Err(e),
    }
}

// With ? - clean!
fn read_username_from_file() -> Result<String, io::Error> {
    let mut file = File::open("hello.txt")?;
    let mut username = String::new();
    file.read_to_string(&mut username)?;
    Ok(username)
}

// Even shorter!
fn read_username_from_file_short() -> Result<String, io::Error> {
    let mut username = String::new();
    File::open("hello.txt")?.read_to_string(&mut username)?;
    Ok(username)
}

// Even shorter! (using std lib)
fn read_username_from_file_std() -> Result<String, io::Error> {
    fs::read_to_string("hello.txt")
}