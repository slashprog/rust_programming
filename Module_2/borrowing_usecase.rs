fn main() {
    let s1 = String::from("Hello");
    
    print_length(&s1);

    println!("s1: {}", s1); // This will cause a compile-time error because s1 has been moved to the print_length function
}

fn print_length(s: &str) {
    println!("The length of '{}' is {}.", s, s.len());
}