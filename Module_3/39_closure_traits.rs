fn main() {
    let x = 5;
    
    // Fn: immutable capture (can be called multiple times)
    let print_x = || println!("{}", x);
    print_x();
    print_x();  // OK
    
    // FnMut: mutable capture
    let mut y = 5;
    let mut add_one = || {
        y += 1;
        println!("y = {}", y);
    };
    add_one();  // y = 6
    add_one();  // y = 7
    
    // FnOnce: consumes captured variables (can be called once)
    let s = String::from("hello");
    let consume = || {
        drop(s);  // s consumed
    };
    consume();
    // consume();  // ERROR: s already dropped
    
    // Parameter types specify which closure you accept
    fn takes_fn<F: Fn()>(f: F) { f(); }          // Any closure
    fn takes_fn_mut<F: FnMut()>(mut f: F) { f(); } // Mut closure
    fn takes_fn_once<F: FnOnce()>(f: F) { f(); }   // Once closure
}
