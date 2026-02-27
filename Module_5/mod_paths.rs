mod a {
    pub mod b {
        pub fn greet() {
            println!("Hello from module b!");
            super::c::d::welcome();
            super::testfn();
        }
    }

    pub mod c {
        pub mod d {
            pub fn welcome() {
                println!("Hello from module d!");
            }
        }
    }

    fn testfn() {
        println!("This is a test function in module a.");
    }

    pub fn call_greet() {
        b::greet();  // relative path to access greet function
    }
}

use a::call_greet;

fn main() {
    call_greet();  // calling the function that calls greet
}