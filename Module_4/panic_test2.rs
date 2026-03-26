use std::panic;


fn main() {
    panic::catch_unwind(|| {
        panic!("This is a panic test!");  // This will be caught instead of terminating the program
    }).unwrap_or_else(|err| {
        println!("Caught a panic: {:?}", err);
    });

}
