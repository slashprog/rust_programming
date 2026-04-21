fn main() {
    for i in 10..20 {
        println!("i: {}", i);
    }
    println!("-------------------");
    for i in 10..=20 {
        println!("i: {}", i);
    }

    println!("-------------------");
    for i in (1..10).step_by(2) {
        println!("i: {}", i);
    }

    println!("-------------------");
    for i in (1..10).rev() {
        println!("i: {}", i);
    }

    let values = [10, 20, 30, 40, 50];
    println!("-------------------");
    // for v in values.iter() {
    for v in &values {
        println!("v: {}", v);
    }
    println!("-------------------");

    let users = ["Alice", "Bob", "Charlie", "Dave", "Eve"];
    for (idx, u) in users.iter().enumerate() {
        println!("User {}: {}", idx, u);
    }
}