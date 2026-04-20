fn main() {

    let y = {
        let x = 5;
        x + 1
    };

    println!("The value of y is: {}", y);

    println!("The square of 3 is: {}", square(3));
}

fn square(x: i32) -> i32 {
    x * x
}
