fn add(x: i32, y: i32) -> i32 {
    x + y
}

fn add_strings(s1: String, s2: String) -> String {
    format!("{} {}", s1, s2)
}

fn add_strings2(s1: &str, s2: &str) -> String {
    format!("{} {}", s1, s2)
}

fn modify_string(s1: &mut String) {
    s1.push_str(" modified");
}

fn main() {
    let (a, b) = (5, 10);
    let sum = add(a, b);  // a and b are copied into the function, not moved
    println!("The sum of {} and {} is: {}", a, b, sum);

    let s1 = String::from("Hello");
    let s2 = String::from("World");
    let result = add_strings(s1, s2);  // s1 and s2 are moved into the function
    println!("The concatenated string is: {}", result);
    //println!("s1 = {}, s2 = {}", s1, s2);  // This will cause a compile-time error because s1 and s2 have been moved

    let s1 = String::from("Hello");
    let s2 = String::from("World");
    let result = add_strings2(&s1, &s2);  // s1 and s2 are borrowed, not moved
    println!("The concatenated string is: {}", result);
    println!("s1 = {}, s2 = {}", s1, s2);  //

    let mut s = String::from("Hello");
    modify_string(&mut s);  // s is borrowed mutably, not moved
    println!("Modified string: {}", s);
}

