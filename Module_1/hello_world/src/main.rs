static Z: i32 = 10;

fn main() {
    //let x = 5;
    //let y = x;

    let mut x = 5;
    let y = x; // x is copied here (i32 implements Copy trait) - not moved

    println!("x = {}, y = {}, z = {}", x, y, Z); // Both x and y are valid here;
    {
        x = 10;
        // Z = 20;
        println!("x = {}, y = {}, z = {}", x, y, Z); // Both x and y are valid here;
    }
    println!("x = {}, y = {}, z = {}", x, y, Z); // Both x and y are valid here;
}
