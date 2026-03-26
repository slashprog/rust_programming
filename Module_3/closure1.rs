fn main() {
    let x = 10;

    let add_x = |y| y + x;  // Simplest closure that captures x
    let result = add_x(5);  // Calls the closure with y = 5
    println!("The result of adding x to 5 is: {}", result);

    let add_10 = || x + 10;  // Closure that adds 10 to x
    let result2 = add_10();  // Calls the closure without any arguments
    println!("The result of adding 10 to x is: {}", result2);

    let testfn = || {
        let a = 5;
        let b = 10;
        let sum = a + b;
        println!("The sum of a and b is: {}", sum);   
    };

    testfn();

    let multiply = |a: i32, b: i32| {
        println!("The product of {} and {} is: {}", a, b, a * b);
    };
    multiply(5, 10);

}