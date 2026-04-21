fn main() {
    let mut counter :u16 = 0;
    let result = loop {
        counter += 1;
        println!("Counter: {}", counter);
        if counter >= 10 {
            break 42;
        }
    };
    println!("Result: {}", result);

}