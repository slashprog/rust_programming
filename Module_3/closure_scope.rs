fn create_closure(x: i32) -> impl Fn(i32, i32) -> i32 {
    let z = 10;
    move |y1: i32, y2: i32| x + y1 + y2 + z
}


fn create_adder() -> impl Fn(i32, i32) -> i32 {
    |x: i32, y: i32| x + y
}

fn main() {
    let add_five = create_closure(5);

    let result = add_five(10, 20); // This will add 5 (from the closure) to 10 and 20

    println!("Result of adding 5 to 10 and 20: {}", result);

    let adder = create_adder();
    let sum = adder(3, 4); // This will add 3 and 4
    println!("Result of adding 3 and 4: {}", sum);
}