use std::fs::File;
use std::io::{stdin, stdout, Read, Write};

fn main() {
    let mut filename = String::new();
    print!("Enter the filename to read:");
    stdout().flush().expect("Failed to flush stdout"); // Ensure prompt is printed before input

    stdin()
      .read_line(&mut filename)
      .expect("Failed to read line");
 
    let mut file = match File::open(filename.trim()) {
        Ok(f) => { println!("File opened successfully: {:?}", f); f },
        Err(e) => { eprintln!("Error opening file: {}", e); return; },
    };

    let mut contents = String::new();

    let contents = match file.read_to_string(&mut contents) {
        Ok(_) => { println!("File read successfully"); contents },
        Err(e) => { eprintln!("Error reading file: {}", e); return; },
    };

    println!("File contents:\n{}", contents);

}