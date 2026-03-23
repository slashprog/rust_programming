//fn add(x: String, y: String) -> (String, String, i32) {
//    let result = x.len() as i32 + y.len() as i32;
//    (x, y, result) // Return x and y along with the result to avoid moving them out of scope
//}

fn add(x: String, y: String) -> i32 {
    x.len() as i32 + y.len() as i32
}   

fn main() {
    let a = String::from("Hello");
    let b = String::from("Rust");
//    let (a, b, result) = add(a, b);
    let result = add(a.clone(), b.clone()); // Clone a and b to keep them valid after the function call
    println!("The sum of the lengths is {}", result);
//    println!("a: {}, b: {}", a, b); // Now a and b are still valid because they were returned from the add function
}