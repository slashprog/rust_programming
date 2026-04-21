fn main() {
    let s1 = String::from("Hello, world!"); // char s1[] = "Hello, world!";
    let s2 = "Hello, world!"; // char *s2 = "Hello, world!";
    let s3 = "Hello, world!".to_string();
    
    println!("s1: {}, s2: {}, s3: {}", s1, s2, s3);
    println!("s1 type: {}, s2 type: {}, s3 type: {}", 
              type_of(&s1), type_of(&s2), type_of(&s3));

}

fn type_of<T>(_: &T) -> &str {
    std::any::type_name::<T>()
}