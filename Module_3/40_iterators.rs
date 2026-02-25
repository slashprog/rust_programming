fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Iterators are LAZY - they do nothing until consumed
    let iter = numbers.iter();  // Creates iterator, no work done
    
    // Consuming adapters (produce final values)
    let sum: i32 = numbers.iter().sum();
    let count = numbers.iter().count();
    let max = numbers.iter().max();
    
    // Iterator adapters (produce new iterators)
    let doubled: Vec<i32> = numbers
        .iter()
        .map(|x| x * 2)        // Transform
        .collect();             // Consume to Vec
    
    let evens: Vec<&i32> = numbers
        .iter()
        .filter(|&x| x % 2 == 0)  // Keep only even
        .collect();
    
    // Chaining adapters
    let result: i32 = numbers
        .iter()
        .map(|&x| x * 2)
        .filter(|&x| x > 5)
        .sum();
    
    // Three forms of iteration
    for x in numbers.iter() { }     // Iterate over &T
    for x in numbers.iter_mut() { }  // Iterate over &mut T
    for x in numbers.into_iter() { } // Consumes numbers, moves T
}
