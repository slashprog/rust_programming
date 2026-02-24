fn main() {
    let x: Option<i32> = None;
    let y: Option<i32> = Some(10);

    println!("x: {:?}, y: {:?}", x, y);
    
    println!("y.unwrap_or(0): {:?}", y.unwrap_or(0));  // Returns 10
    println!("x.unwrap_or(0): {:?}", x.unwrap_or(0));  // Returns 0

 //   println!("x.unwrap(): {:?}", x.unwrap());  // Returns 0
}