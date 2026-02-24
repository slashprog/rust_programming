fn main() {
    let mut s = String::from("hello");
    
    // One mutable reference
    let r1 = &mut s;
    r1.push_str(" world");
    
    // println!("{}", s);  // ERROR: can't use s while borrowed
    println!("{}", r1);  // OK
    
    // But only ONE mutable reference at a time!
    let mut t = String::from("test");
    let r2 = &mut t;
    // let r3 = &mut t;  // ERROR: cannot borrow `t` as mutable more than once
}

fn modify(s: &mut String) {
    s.push_str("!");  // Can modify through mutable reference
}
