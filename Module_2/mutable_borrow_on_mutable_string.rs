fn main() {
    let mut s = String::from("Hello, world!");

    let r1 = &mut s; // mutable borrow of s
  
    // let r2 = &mut s; // error: cannot borrow `s` as mutable more than once at a time

    println!("s = {}", s); // prints the original string

    r1.push_str(" mutable from the reference."); // modify s through the mutable reference
  
    // let r3 = &s;
    //println!("r3: {}", r3); // prints the modified string

    s.push_str(" mutable from the owner"); 
    println!("s: {}", s);
    // println!("r1: {}", r1); // error: cannot use `r1` because it was mutably borrowed

}