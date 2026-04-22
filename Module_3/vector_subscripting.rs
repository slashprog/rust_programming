fn main() {
    let v = vec![1, 2, 3, 4, 5];

    let first = v[0];
    println!("First element: {}", first);

    // This will cause a panic at runtime
    // let seventh = v[7];
    // println!("Seventh element: {}", seventh);

    // Always safer to use get() which returns an Option
    let item = v.get(7);
    match item {
        Some(value) => println!("Third element: {}", value),
        None => println!("No third element found"),
    }


}