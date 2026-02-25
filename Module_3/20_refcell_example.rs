use std::cell::RefCell;

fn main() {
    let data = RefCell::new(String::from("Hello"));

    // We can mutate the data even though 'data' isn't marked 'mut'
    data.borrow_mut().push_str(" world");

    println!("{}", data.borrow());
}