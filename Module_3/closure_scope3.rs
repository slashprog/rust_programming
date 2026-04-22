fn create_closure(time: String) -> impl Fn(String) -> String {
    let greeting: String = "Hello, ".to_string(); // This is a string concatenation
    move |user: String| format!("{}, {}, Good {}!", greeting, user, time) // This is a closure that captures the greeting variable
}


fn main() {
    let greet_morning = create_closure("morning".to_string());

    let result1 = greet_morning("Alice".to_string());
    let result2 = greet_morning("Bob".to_string());

    println!("{}", result1);
    println!("{}", result2);

}