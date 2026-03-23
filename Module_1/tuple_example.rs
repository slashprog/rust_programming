fn main() {
    //let mut my_tuple :(u8, &str, f64) = (42, "Hello", 3.14);
    let mut my_tuple = (42, "Hello", 3.14);  // Type inference can figure out the types
    
    // Accessing tuple elements
    println!("First element: {}", my_tuple.0);  // 42
    println!("Second element: {}", my_tuple.1); // Hello
    println!("Third element: {}", my_tuple.2);  // 3.14
    
    // Destructuring the tuple
    let (a, b, c) = my_tuple;
    println!("Destructured values: {}, {}, {}", a, b, c);

    // In C: char values[5] = {10, 20, 30, 40, 50};
    let mut values :[u8; 5] = [10, 20, 30, 40, 50];
    println!("Array: {:?}", values);

    my_tuple.0 = "test data";
    println!("Updated first element: {}", my_tuple.0);  // 55

    values[0] = 100;
    println!("Updated array: {:?}", values);
}