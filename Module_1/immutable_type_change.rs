fn main() {
    let x = "Hello, world!";
    println!("The value of x is: {}", x);

    {
      let x = x.len();
      println!("The length of the string is: {}", x);
    }

    println!("The value of x is still: {}", x);
}