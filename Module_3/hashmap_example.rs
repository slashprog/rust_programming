use std::collections::HashMap;

fn main() {
    let mut scores : HashMap<&str, i32> = HashMap::new();

    scores.insert("John", 90);
    scores.insert("Alice", 85);
    scores.insert("Bob", 78);
    
    println!("Scores: {:?}", scores);

    // Accessing values
    let value = scores.get("Charlie");
    match value {
        Some(score) => println!("Charlie's score: {}", score),
        None => println!("Charlie's score not found"),
    }

    if let Some(score) = scores.get("Charlie") {
        println!("Charlie's score: {}", score);
    } else {
        println!("Charlie's score not found");
    }

    scores.insert("Alice", 95);
    println!("Updated Scores: {:?}", scores);


    for (key, value) in scores.iter() {
        println!("{}: {}", key, value);
    }

}
