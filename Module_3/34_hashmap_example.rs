use std::collections::HashMap;

fn main() {
    // Creating HashMap
    let mut scores = HashMap::new();
    
    // Inserting
    scores.insert(String::from("Blue"), 10);
    scores.insert(String::from("Yellow"), 50);
    
    // Collect from vector of tuples
    let teams = vec![String::from("Blue"), String::from("Yellow")];
    let initial_scores = vec![10, 50];
    let scores: HashMap<_, _> = teams.into_iter()
                                     .zip(initial_scores.into_iter())
                                     .collect();
    
    // Accessing
    let team_name = String::from("Blue");
    let score = scores.get(&team_name);  // Returns Option<&V>
    
    // Iterating
    for (key, value) in &scores {
        println!("{}: {}", key, value);
    }
    
    // Updating strategies
    scores.insert(String::from("Blue"), 25);  // Overwrite
    
    scores.entry(String::from("Blue"))
          .or_insert(50);  // Insert only if no entry
    
    scores.entry(String::from("Red"))
          .and_modify(|e| *e += 10)
          .or_insert(1);   // Update or insert
    
    // Ownership: Keys and values are moved!
    let field_name = String::from("Favorite color");
    let field_value = String::from("Blue");
    scores.insert(field_name, field_value);
    // field_name and field_value are MOVED, can't use!
}