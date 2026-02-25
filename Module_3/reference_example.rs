fn testfn() -> &'static String {
    let s = String::from("test data");
    let r = &s;  // r is a REFERENCE to s
    r
}

fn testfn2() -> String {
    let s = String::from("test data");
    s  // s is returned, ownership moves to caller
}

/* fn foo(s: String) {
    println!("foo: s = {}", s);
} */

fn main() {
    let x1 = String::from("hello");
    let x2 = &x1;  // x2 is a REFERENCE to x1
    let x3 = &x1;  // x3 is also a REFERENCE to x1
    // foo(x1.clone());  // x1 MOVED into foo, but clone() creates a copy, so x1 still valid
    let x4 = &x1;  // x4 is also a REFERENCE to x1

    println!("x1 = {}, x2 = {}", x1, x2);  // OK, both valid
    println!("x3 = {}, x4 = {}", x3, x4);  // OK, both valid
}