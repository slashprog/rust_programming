// A standard function
fn add_one_v1(x: i32) -> i32 { x + 1 }

fn main() {
    let result = add_one_v1(5);
    println!("Result from function: {}", result);

    // A closure version
    let add_one_v2 = |x: i32| x + 1;

    // Calling them is exactly the same
    let result = add_one_v2(5);
    println!("Result from closure: {}", result);
} 