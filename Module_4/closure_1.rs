fn main() {
    let add = |x: i32, y: i32| x + y;

    let result = add(5, 3);
    println!("The sum is: {}", result);

    let testfn = || {
        println!("This is a closure without parameters.");
    };

    testfn();

}