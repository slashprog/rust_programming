fn main() {
    // Iterate over array
    let arr = [10, 20, 30, 40, 50];
    
    for element in arr {
        println!("Value: {}", element);
    }
    
    // Iterate over range (1..4 is exclusive, 1..=4 inclusive)
    for number in 1..4 {
        println!("{}!", number);  // 1, 2, 3
    }
    
    for number in 1..=4 {
        println!("{}!", number);  // 1, 2, 3, 4
    }
    
    // Reverse range
    for number in (1..4).rev() {
        println!("{}!", number);  // 3, 2, 1
    }
    
    // Iterate with index using .enumerate()
    for (index, value) in arr.iter().enumerate() {
        println!("Index {}: {}", index, value);
    }
}
