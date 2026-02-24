fn main() {
    let mut x = 10; // the value is stored on the stack
    let mut y = x; // x is copied to y, both are independent (two copies of the value 10)

    println!("x: {}, y: {}", x, y);
    x += 5;
    y -= 3;
    println!("After modification - x: {}, y: {}", x, y);

}