enum Result<T, E> {
    Ok(T),
    Err(E),
}

// Basic usage
use std::fs::File;

fn main() {
    let file_result = File::open("hello.txt");
    
    let file = match file_result {
        Ok(file) => file,
        Err(error) => {
            panic!("Problem opening file: {:?}", error);
        }
    };
    
    // Better: handle different errors differently
    use std::io::ErrorKind;
    
    let file = match File::open("hello.txt") {
        Ok(file) => file,
        Err(error) => match error.kind() {
            ErrorKind::NotFound => {
                match File::create("hello.txt") {
                    Ok(fc) => fc,
                    Err(e) => panic!("Can't create file: {:?}", e),
                }
            }
            other_error => {
                panic!("Problem opening file: {:?}", other_error);
            }
        },
    };
}
