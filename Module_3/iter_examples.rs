fn main() {
    let nums = vec![6, 4, 9, 12, 15, 7];

    let squares = nums
                .iter()          // Iterator
                .map(|x| x * x)  // Adapter
                .collect::<Vec<i32>>(); // Collector
    
    println!("The original numbers are: {:?}", nums);
    println!("The squares of the numbers are: {:?}", squares);

    let odds = nums
                .iter()          // Iterator
                .filter(|x| *x % 2 != 0)  // Adapter
                .collect::<Vec<&i32>>(); // Collector
    
    println!("The odd numbers are: {:?}", odds);

}