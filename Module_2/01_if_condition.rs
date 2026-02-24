fn main() {
    let number = 7;
    
    // Traditional if (as statement)
    if number < 5 {
        println!("condition was true");
    } else {
        println!("condition was false");
    }
    
    // if as EXPRESSION (returns value)
    let description = if number % 2 == 0 {
        "even"      // no semicolon = return value
    } else {
        "odd"       // no semicolon = return value
    };
    
    println!("{} is {}", number, description);
    
    // ERROR: Types must match!
    let invalid = if true {
        5           // i32
    } else {
        "five"      // &str - COMPILE ERROR!
    };
}
