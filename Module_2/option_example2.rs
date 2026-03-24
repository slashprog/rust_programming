
fn testfn(x: i32) -> Option<i32> {
    if x > 0 {
        Some(x*x)
    } else {
        None
    }
}


fn run() -> Option<()> {

    let r = testfn(10)?;
    println!("r = {}", r);
    Some(())    
}

fn main() {
    match run() {
        Some(()) => println!("Success"),
        None => println!("Failure"),
    }
}