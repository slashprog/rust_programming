fn main() {
    let s = String::from("hello");
    take_ownership(s.clone());  // s MOVED into function, not returned
    println!("main: s = {}", s);  // OK, s still valid
    
}

fn take_ownership(some_string: String) {
    println!("take_ownership: some_string = {}", some_string);
}  // some_string dropped, memory freed

