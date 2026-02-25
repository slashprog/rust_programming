fn main() {
    let s = String::from("Hello");
    take_ownership(s); 

    // println!("{}", s); // ERROR! s was moved and no longer exists here.
}

fn take_ownership(some_string: String) {
    println!("{}", some_string);
} // 'some_string' goes out of scope and the heap memory is FREED here.