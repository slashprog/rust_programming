fn main() {
    let words = vec!["apple", "to", "banana", "cat"];

    let results: Vec<String> = words.iter()
        .filter(|w| w.len() > 2)           // Keep "apple", "banana", "cat"
        .map(|w| w.to_uppercase())        // Transform to uppercase
        .collect();                       // Gather into a new Vec

    println!("{:?}", results); // ["APPLE", "BANANA", "CAT"]
}