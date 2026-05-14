macro_rules! make_greeting_fn {
    ($fn_name:ident, $msg:expr) => {
        fn $fn_name() {
            println!("{}", $msg);
        }
    };
}

// This generates two functions at compile time!
make_greeting_fn!(say_hi, "Hi there!");
make_greeting_fn!(say_bye, "Goodbye!");

fn main() {
    say_hi();   // Hi there!
    say_bye();  // Goodbye!
}