// MISTAKE 1: Returning reference to local
// fn bad() -> &str {
//     let s = String::from("hello");
//     &s  // ERROR: s dropped here
// }

// MISTAKE 2: Not enough lifetime information
fn longest_bad(x: &str, y: &str) -> &str {  // ERROR: need lifetime
    if x.len() > y.len() { x } else { y }
}
// Fixed:
fn longest_good<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() { x } else { y }
}

// MISTAKE 3: Lifetime too short
fn main() {
    let r;
    {
        let x = 5;
        // r = &x;  // ERROR: x doesn't live long enough
    }
    // println!("{}", r);
    
    // MISTAKE 4: Incorrect struct usage
    let holder;
    {
        let x = 42;
        // holder = RefHolder { reference: &x };  // ERROR
    }
    // holder.get_ref();
}

// MISTAKE 5: Forgetting lifetime when struct holds reference
// struct Bad {  // ERROR: needs lifetime
//     data: &str,
// }
