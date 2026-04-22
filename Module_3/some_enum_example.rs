fn get_length(s: &str) -> Option<usize> {
    if s.is_empty() {
        None
    } else {
        Some(s.len())
    }
}

fn main() {
    let s = "";

    // Avoid usage of unwrap() in production code.
    // let r = get_length(s).unwrap();

    match get_length(s) {
        Some(length) => println!("Length of '{}': {}", s, length),
        None => println!("String is empty."),
    }
    
    // println!("Length of '{}': {}", s, r);

}