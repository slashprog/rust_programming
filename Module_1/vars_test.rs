use std::any::type_name;

fn type_of<T>(_: &T) -> &str {
    type_name::<T>()
}
// Supported primitive datatypes in Rust include:
// - Integers: i8, i16, i32, i64, i128, isize (signed); u8, u16, u32, u64, u128, usize (unsigned)
// - Floating-point numbers: f32, f64
// - Booleans: bool
// - Characters: char
// - Unit type: () (used for functions that return nothing) - similar to void in C/C++, or None in Python

static A: i32 = 100;

fn main() {

    println!("The value of a is {}. The type of a is: {:?}", A, type_of(&A));

    let x: u8 = 10; // let is used to bind a variable to a value. The type of the variable can be inferred by the compiler, but it can also be explicitly specified as shown here.
    // By default let bindings are immutable, meaning that once a value is assigned to a variable, it cannot be changed. To make a variable mutable, you can use the mut keyword as shown below:
    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));

    let y = ();
    println!("The value of y is {:?}. The type of y is: {:?}", y, type_of(&y));

    //x += 250;
    
    let x = 20; // Shadowing the previous variable x with a new variable x. This is allowed in Rust and the new variable will take precedence over the old one within its scope.
    println!("The value of x after addition is {}. The type of x is: {:?}", x, type_of(&x));

    let x :u8 = 100;
    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));
    let x = (x as i32) + 500; // type-casting is explicit in Rust.
    println!("The value of x after addition is {}. The type of x is: {:?}", x, type_of(&x));

    // char *x = "Hello, world!"; // In C/C++, a string literal is an array of characters terminated by a null character. The type of a string literal is char*, which is a pointer to the first character of the string. String literals are immutable, meaning that their contents cannot be changed after they are created.
    let x = "Hello, world!"; // String literals in Rust are of type &str, which is a string slice. It is a reference to a string data stored elsewhere in memory. String slices are immutable, meaning that their contents cannot be changed after they are created.
    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));

    let x :f32 = 3.14;
    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));

    let y = x + 1.0;
    println!("The value of y is {}. The type of y is: {:?}", y, type_of(&y));

    // NOTE: Rust does not support implicit type conversion (also known as type coercion). This means that you cannot automatically convert a value of one type to another type without explicitly specifying the conversion. For example, if you have a variable of type i32 and you want to assign it to a variable of type f32, you need to use an explicit cast like this:
    let a: i32 = 10;
    let b: i16 = 20;
    // let c = a as i16 + b;
    let c = a + b as i32;
    println!("The value of c is {}. The type of c is: {:?}", c, type_of(&c));


    let mut x :u8 = 10; // boolean value

    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));

    x = 300;

    println!("The value of x is {}. The type of x is: {:?}", x, type_of(&x));


}