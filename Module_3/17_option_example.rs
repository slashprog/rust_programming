fn main() {
    let v = vec![1, 2, 3];
    let element = v.get(10); // This returns None

    match element {
        Some(value) => println!("Found: {}", value),
        None => println!("Nothing at that index!"),
    }
}