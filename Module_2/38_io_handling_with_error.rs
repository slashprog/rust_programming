use std::io;

fn main() -> io::Result<()> {
    let mut input = String::new();
    
    println!("Enter something:");
    match io::stdin().read_line(&mut input) {
        Ok(bytes_read) => {
            println!("Read {} bytes: {}", bytes_read, input.trim());
            Ok(())
        }
        Err(error) => {
            eprintln!("Error reading input: {}", error);
            Err(error)
        }
    }
}