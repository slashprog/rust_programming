fn main() {
    let x = 1..=4;
    println!("The range is: {:?}", x);

    for n in x {
        println!("Value: {}", n);
    }
}