fn main() {
    let mut count = 0;
    
    'outer: loop {  // Label the outer loop
        println!("Entered outer loop");
        
        'inner: loop {
            println!("Entered inner loop");
            count += 1;
            
            if count == 3 {
                break 'inner;  // Breaks ONLY inner loop
            }
            
            if count == 5 {
                break 'outer;  // Breaks BOTH loops!
            }
        }
        
        println!("Still in outer loop");
    }
    
    println!("Exited all loops at count = {}", count);
}
