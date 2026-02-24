fn main() {
    // Basic infinite loop
    loop {
        println!("Again!");
        break;  // Exit loop
    }
    
    // Returning values from loop
    let mut counter = 0;
    
    let result = loop {
        counter += 1;
        
        if counter == 10 {
            break counter * 2;  // Returns value from loop
        }
    };
    
    println!("Result: {}", result);  // 20
}
