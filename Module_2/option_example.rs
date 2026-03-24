
fn testfn(x: i32) -> Option<i32> {
    if x > 0 {
        Some(x*x)
    } else {
        None
    }
}


fn main() {

    let r = testfn(10);
    let r2 = testfn(-10);

    println!("r = {:?}", r);
    println!("r2 = {:?}", r2);

    println!("r.unwrap() = {}", r.unwrap()); // Not recommended in production code.
    // println!("r2.unwrap() = {}", r2.unwrap()); // This will panic

    let x = r2.unwrap_or(0); // This will return 0 instead of panicking
    println!("x = {}", x);

    let x = match r2 {  // Recommended way to handle Option / Result enums
        Some(val) => val,
        None => 0,
    };
    println!("x = {}", x);

//    let r3 = testfn(5)?; // Need to check on this...
//    println!("r3 = {}", r3);

    let r3 = testfn(0).unwrap_or_else(|| {
        println!("testfn returned None, using default value 0");
        0
    });
    println!("r3 = {}", r3);

}