///
///
/// This is the main function, which is the entry point of the Rust program.
fn main() {
    //
    //loop {
    //    println!("This will loop forever!");
    // }

    let mut counter = 0;
    let result = loop {
        counter += 1;

        println!("Counter: {}", counter);
        if counter >= 10 {
            break counter * 2;
        }
    };

    println!("The result is: {}", result);

    let mut counter = 0;
    while counter < 20 {
        println!("Counter: {}", counter);
        counter += 1;
        if counter >= 10 {
            break;
        }
    }

    for number in (1..=10).rev() {
        println!("Number: {}", number);
    }


}
