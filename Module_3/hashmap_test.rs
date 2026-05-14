use std::collections::HashMap;

fn main() {
    let scores = HashMap::from([
        (String::from("Blue"), 10),
        (String::from("Yellow"), 50),
    ]);

    println!("Scores: {:?}", scores);

    let scores2 = scores.clone();
    println!("Cloned Scores: {:?}", scores2);

}