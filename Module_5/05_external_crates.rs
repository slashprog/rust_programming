// src/main.rs
// Bring external crates into scope
use serde::{Serialize, Deserialize};
use rand::Rng;
use regex::Regex;

#[derive(Serialize, Deserialize, Debug)]
struct User {
    name: String,
    age: u8,
}

fn main() {
    // Use rand
    let mut rng = rand::thread_rng();
    let n: u8 = rng.gen();
    println!("Random: {}", n);
    
    // Use regex
    let re = Regex::new(r"^\d{4}-\d{2}-\d{2}$").unwrap();
    println!("Date format: {}", re.is_match("2023-12-25"));
    
    // Use serde (serialization)
    let user = User {
        name: "Alice".to_string(),
        age: 30,
    };
    let json = serde_json::to_string(&user).unwrap();
    println!("JSON: {}", json);
}
