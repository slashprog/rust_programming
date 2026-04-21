fn main() {
    let s = String::from("Hello, world!");

    // We can have multiple immutable references to the same data
    let r1 = &s;
    let r2 = &s;

    println!("r1: {}, r2: {}", r1, r2);

}