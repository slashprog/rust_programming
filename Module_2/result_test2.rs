
fn testfn() -> Result<String, i32> {
    //Ok("Hello, world!".to_string())
    Err(404)
}

fn main() {
    match testfn() {
        Ok(value) => println!("Success: {}", value),
        Err(code) => println!("Error code: {}", code),
    }
}