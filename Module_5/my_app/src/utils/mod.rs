mod tools;
mod helper;

pub fn multiply(x: i32, y: i32) -> i32 {
    println!("Multiplying {} and {}", x, y);
    tools::testfn();
    // helper::helper_function();
    x * y
}

// pub mod helper;

// pub mod tools; // linking the tools module