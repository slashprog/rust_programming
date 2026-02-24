fn main() {
    // Traditional while loop
    let mut number = 3;
    
    while number != 0 {
        println!("{}!", number);
        number -= 1;
    }
    println!("LIFTOFF!!!");
    
    // while with collections (but for is usually better)
    let arr = [10, 20, 30, 40, 50];
    let mut index = 0;
    
    while index < 5 { // Not a good practice, use 'for' loop instead
        println!("Value: {}", arr[index]);
        index += 1;
    }

  /* The following fails to compile.
  /*  while 1 {
        println!("This will run forever!");
    } */
}
