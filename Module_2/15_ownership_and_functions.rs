fn main() {
    let s = String::from("hello");
    //let s = take_ownership(s);  // s MOVED into function and returned
    take_ownership(s);  // s MOVED into function, not returned
    // println!("{}", s);  // ERROR: s invalid, as it is moved and lost ownership
    
    let x = 5;
    make_copy(x);  // x COPY-ed (i32 implements Copy)
    println!("x still valid: {}", x);  // OK
}

fn take_ownership(some_string: String) {
    println!("{}", some_string);
    // some_string
}  // some_string dropped, memory freed

fn make_copy(some_integer: i32) {
    println!("{}", some_integer);
}  // some_integer dropped (stack, nothing special)
