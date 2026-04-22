fn create_closure(x: i32) -> impl Fn(i32, i32) -> i32 {
    let z = 10;
    move |y1: i32, y2: i32| x + y1 + y2 + z
}


fn main() {
    let add_five = create_closure(5);
    let add_six = create_closure(6);

    let result1 = add_five(10, 20); // This will add 5 (from the closure) to 10 and 20
    let result2 = add_six(10, 20); // This will add 6 (from the closure) to 10 and 20

    println!("Result of adding 5 to 10 and 20: {}", result1);
    println!("Result of adding 6 to 10 and 20: {}", result2);


}