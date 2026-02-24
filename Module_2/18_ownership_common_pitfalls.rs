fn main() {
    // Pitfall 1: Assuming all types move
    let x = 5;
    let y = x;
    println!("{}", x);  // OK - i32 is Copy!
    
    // Pitfall 2: Forgetting .clone() when you need both
    let s1 = String::from("hello");
    let s2 = s1;  // Oops, now s1 is gone
    // let s3 = s1.clone();  // Too late!
    
    // Pitfall 3: Thinking moves are expensive
    let v1 = vec![1, 2, 3, 4, 5];  // Large vector
    let v2 = v1;  // CHEAP - just copies stack pointer!
    // Only .clone() would copy heap data
    
    // Pitfall 4: Not understanding scope
    let r;
    {
        let x = 5;
        r = &x;  // ERROR: x doesn't live long enough
    }
    // println!("{}", r);
}
