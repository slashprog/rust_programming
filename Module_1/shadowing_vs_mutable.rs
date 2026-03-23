fn main() {
    let mut x = 10;
    println!("The value of x is: {}", x);

    {
      x = x * 2;
      println!("The value of x in the inner scope is: {}", x);
    }

    println!("The value of x is still: {}", x);
}