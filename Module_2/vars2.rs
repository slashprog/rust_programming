fn main() {
    let mut x = Box::new(10); // Using Box to create a heap-allocated integer
    println!("The value of x is: {}", x);

    // let y = x; // This moves the ownership of the value from x to y

    let y = x.clone(); // This creates a clone of the value, allowing both x and y to have their own copies
    println!("The value of y is: {}", y);

    *x += 10;

    println!("The value of x is: {}", x);
    println!("The value of y is still: {}", y);

    let x = 10; // lives on stack;
    let y = 4.5; // lives on stack;
    let z = "Hello"; // z lives on stack, but "hello" is a liter that lives in rodata.
    let x = String::from("Hello"); // x lives on stack, but "Hello" lives on heap;
    let y = [10, 20, 30, 40, 50];


}