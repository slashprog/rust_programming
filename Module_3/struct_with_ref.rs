struct Point<'a> {
    x: &'a i32,
    y: &'a i32
}

fn main() {

    let (a, b) = (10, 20);

    let (x, y) = (&a, &b); // Creating references to a and b

    println!("x: {}, y: {}", x, y); // This will print the values of a and b through the references
   // x and y end their lifetime here, so we cannot use them after this point

//    let point1 = Point { x: &a, y: &b };
    
//    println!("Point 1: ({}, {})", point1.x, point1.y);
}