use std::any::type_name;

fn type_of<T>(_: T) -> &'static str {
    type_name::<T>()
}

fn main() {
    let r = 1..5;

    println!("r = {:?}", r);
    println!("Type of r = {}", type_of(r.clone()));

    for i in r {
        println!("{}", i);
    }
}