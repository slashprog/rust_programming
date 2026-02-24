use std::any::type_name;

fn type_of<T>(_: T) -> &'static str {
    type_name::<T>()
}

fn main() {
    let s = "Hello world";
    let s1 = "Hello world";

    println!("s: {}, s1: {}", s, s1);

    let x = s.to_string(); //
    let p1 = x.as_ptr(); // Get the pointer to the string data
   
    let y = s.to_string();
    let p2 = y.as_ptr(); // Get the pointer to the string data of s1

    let p3 = Box::new(s);
   
    println!("p1: {:p}, p2: {:p}, p3: {:p}",  p1, p2, p3);
    println!("x: {}, p1: {}, p3 = {}", type_of(x), type_of(p1), type_of(p3));


}