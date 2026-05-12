fn main() {
    let x = 5;

    let z = {
        let y = 10;
        println!("x = {}, y = {}", x, y);
        x + y
    };
    // println!("x = {}, y = {}", x, y); // This line would cause an error because y is not in scope here

    println!("z = {}", z);

    if z > 10 {
        println!("z is greater than 10");
    } else if z == 10 {
        println!("z is equal to 10");
    } else {
        println!("z is not greater than 10");
    }


    let a = if z > 10 {
        println!("z is greater than 10");
        1
    } else if z == 10 {
        println!("z is equal to 10");
        0
    } else {
        println!("z is not greater than 10");
        -1
    };


    let b = if z < 10 {
        println!("z is less than 10");
        1
    };

    println!("a = {}", a);
}