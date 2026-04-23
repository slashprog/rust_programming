// MISTAKE 1: Returning reference to local
//fn bad() -> &str {
//     let s = String::from("hello");
//     &s  // ERROR: s dropped here
//}

fn better() -> String {
    let s = String::from("hello");
    s  // OK: ownership of s is moved to caller
}


// MISTAKE 2: Not enough lifetime information
//fn longest_bad(x: &str, y: &str) -> &str {  // ERROR: need lifetime
//    if x.len() > y.len() { x } else { y }
//}
// Fixed:
fn longest_good<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() { x } else { y }
}


fn longest_ok<'a: 'b, 'b: 'c, 'c>(x: &'a str, y: &'b str) -> &'c str {
    if x.len() > y.len() { x } else { y }
}

// MISTAKE 3: Lifetime too short
fn main() {
    
    //let r = better();
    
    let big = longest_good("long string is long", "xyz");
    println!("The longest string is {}", big);

    //let r;
    //{
    //    let x = 5;
        // r = &x;  // ERROR: x doesn't live long enough
    //}
    // println!("{}", r);
    
    // MISTAKE 4: Incorrect struct usage
    //let holder;
    //{
    //    let x = 42;
        // holder = RefHolder { reference: &x };  // ERROR
    //}
    // holder.get_ref();
}

// MISTAKE 5: Forgetting lifetime when struct holds reference
// struct Bad {  // ERROR: needs lifetime
//     data: &str,
// }
