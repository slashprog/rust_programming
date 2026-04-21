
fn main() {
    let s1 = String::from("Hello");
    let s2 :&str = &s1;          // Borrowing a string slice from s1
    let s3 :&str = s1.as_str();   // Converting s1 to a string slice

    let s4 :String = s2.to_string(); // Converting s2 back to a String

    println!("{}, {}", type_of(&s1), s1);
    println!("{}, {}", type_of(&s2), s2);
    println!("{}, {}", type_of(&s3), s3);
    println!("{}, {}", type_of(&s4), s4);
}

fn type_of<T>(_: &T) -> &str {
    std::any::type_name::<T>()
}