use std::rc::Rc;

fn main() {
    let data = Rc::new(String::from("Shared data"));
    let a = Rc::clone(&data); // Increments the reference count
    let b = Rc::clone(&data); // Increments the count again

    println!("Reference count: {}", Rc::strong_count(&data)); // Prints 3
}