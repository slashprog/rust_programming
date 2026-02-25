fn main() {
    let numbers = vec![1, 2, 3, 4, 5, 3];
    
    // Transformation
    let squares: Vec<_> = numbers.iter().map(|&x| x * x).collect();
    
    // Filtering
    let evens: Vec<_> = numbers.iter().filter(|&&x| x % 2 == 0).collect();
    
    // Reducing
    let sum = numbers.iter().fold(0, |acc, &x| acc + x);
    let product = numbers.iter().product::<i32>();
    
    // Searching
    let has_three = numbers.iter().any(|&x| x == 3);
    let all_positive = numbers.iter().all(|&x| x > 0);
    let first_even = numbers.iter().find(|&&x| x % 2 == 0);
    
    // Position
    let position = numbers.iter().position(|&x| x == 3);
    
    // Taking/Skipping
    let first_two: Vec<_> = numbers.iter().take(2).collect();
    let after_two: Vec<_> = numbers.iter().skip(2).collect();
    
    // Combining
    let other = vec![5, 6, 7];
    let zipped: Vec<_> = numbers.iter().zip(other.iter()).collect();
    
    // Unique
    let unique: Vec<_> = numbers.iter().collect::<std::collections::HashSet<_>>()
                               .into_iter().collect();
    
    // Chunking
    let chunks: Vec<_> = numbers.chunks(2).collect();
}
