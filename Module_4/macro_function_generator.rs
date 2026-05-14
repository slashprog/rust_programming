macro_rules! make_greeting_fn {
    ($fn_name:ident, $msg:expr) => {
        fn $fn_name() {
            println!("{}", $msg);
        }
    };
}

macro_rules! make_point {
    ($x:expr, $y:expr) => {
        {
            #[derive(Debug)]
            struct Point {
                x: f64,
                y: f64,
            }
            Point { x: $x, y: $y }
        }
    };
}

// This generates two functions at compile time!
make_greeting_fn!(say_hi, "Hi there!");
make_greeting_fn!(say_bye, "Goodbye!");

fn main() {
    say_hi();   // Hi there!
    say_bye();  // Goodbye!

    let p = make_point!(3.0, 4.0);
    println!("Point: {:?}", p);  // Point: Point { x: 3.0, y: 4.0 }
}