fn main() {
    let offset = 10;
    let numbers = vec![1, 2, 3];

    let shifted: Vec<i32> = numbers.iter()
        .map(|x| x + offset) // Closure captures 'offset' by reference
        .collect();
}