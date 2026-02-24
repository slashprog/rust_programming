fn main() {
    let s = String::from("hello");
    take_ownership(s);  // s MOVED into function
    // println!("{}", s);  // ERROR: s no longer valid
    
    let x = 5;
    make_copy(x);  // x COPY-ed (i32 implements Copy)
    println!("x still valid: {}", x);  // OK
}

fn take_ownership(some_string: String) {
    println!("{}", some_string);
}  // some_string dropped, memory freed

fn make_copy(some_integer: i32) {
    println!("{}", some_integer);
}  // some_integer dropped (stack, nothing special)
