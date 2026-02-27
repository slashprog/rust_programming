mod math;      // linking the math module
mod utils;     // linking the utils module
use math::add; // bringing the add function into scope

fn main() {
    add(5, 3);
    let r = utils::multiply(4, 2);
    println!("Result of multiplication: {}", r);

    // utils::tools::testfn();
}
