// ERROR 1: Multiple mutable borrows
let mut s = String::from("hello");
let r1 = &mut s;
let r2 = &mut s;  // ERROR: cannot borrow `s` as mutable more than once
println!("{}", r1);

// ERROR 2: Mutable + immutable borrows
let mut s = String::from("hello");
let r1 = &s;      // immutable borrow
let r2 = &mut s;  // ERROR: cannot borrow `s` as mutable because it's also borrowed as immutable
println!("{}", r1);

// ERROR 3: Use after borrow ends (but not obvious)
let mut s = String::from("hello");
let r1 = &s;
println!("{}", r1);
let r2 = &mut s;  // OK - r1 no longer used
// BUT if we had println after this, error!

// ERROR 4: Dangling reference
fn dangling() -> &String {
    let s = String::from("hello");
    &s  // ERROR: returns reference to local variable
}
