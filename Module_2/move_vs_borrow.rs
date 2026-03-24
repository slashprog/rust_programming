fn main() {
    let x = String::from("Hello");
    let y = x; // Move occurs here, x is no longer valid
    println!("y = {}", y); // This works because y now owns the String
   // println!("{}", x); // This would cause a compile-time error because x has been moved

   let z = &y; // Borrowing y, z is a reference to y
   println!("z = {}", z); // This works because z is a reference to y
   let w = &y; // Another reference to y
   println!("w = {}", w); // This also works because w is a reference to y
   println!("y = {}, z = {}, w = {}", y, z, w); // All three can be used together because they are references to the same data
}