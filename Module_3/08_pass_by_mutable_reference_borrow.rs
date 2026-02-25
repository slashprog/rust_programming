fn main() {
    let mut s = String::from("Hello");
    modify_string(&mut s); 

    println!("{}", s); // Prints "Hello world"
}

fn modify_string(some_string: &mut String) {
    some_string.push_str(" world");
}