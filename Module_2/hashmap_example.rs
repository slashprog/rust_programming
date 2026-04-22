fn main() {
    let mut scores : HashMap<&str, i32> = HashMap::new();

    scores.insert("John", 90);
    scores.insert("Alice", 85);
    scores.insert("Bob", 78);
    
    println!("Scores: {:?}", scores);

}