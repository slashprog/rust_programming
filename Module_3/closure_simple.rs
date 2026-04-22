fn add(x: i32, y: i32) -> i32 {
    x + y
}

fn main() {
    let add_closure = |x: i32, y: i32| x + y; // lambda expression - the rust way!

    let result1 = add(2, 3);
    let result2 = add_closure(2, 3);

    println!("Result from function: {}", result1);
    println!("Result from closure: {}", result2);
}   