fn main() {
    let s1 = String::from("Hello, World!");
    
    // let c = s1[0];
    let c = s1.chars().nth(0).unwrap(); 
    println!("First character: {}", c);
}