macro_rules! say_hello {
    () => {
        println!("Hello from a macro!");
    };
    // types can be expr, ident, ty, stmt, block, pat, literal, tt (token tree)
    //($name:literal) => {
    //    println!("Hello, {}!", $name);
   // };

    //($name:expr, $role:expr) => {
    //    println!("Hello, {}! Your role is {}.", $name, $role);
    //};

    ($($name:expr),+) => {
        print!("Hello ");
        $(print!("{},", $name);)+
        println!("!");
    };
}

macro_rules! sum {
    ($($num:expr),*) => {
        {
            let mut total = 0;
            total += 0;
            $(total += $num;)*
            total
        }
    };
}


macro_rules! sum_new {
    () => { 0 };
    ($num:expr) => { $num };
    ($num:expr, $($rest:expr),*) => {
        $num + sum!($($rest),*)
    };
}

macro_rules! greet {
    ($($name:expr)?) => {
        println!("Welcome to Rust programming, {}!", $($name)?);
    };
}

fn main() {
    say_hello!(); // Hello from a macro!
    say_hello!(42); // Hello from a macro!
    // say_hello!("Alice", 100); // Hello, Alice! Your role is 100.

    say_hello!("Alice", "Admin", "Bob", "User", "Charlie", "Guest"); // Hello, Alice! Your role is Admin. Hello, Bob! Your role is User. Hello, Charlie! Your role is Guest.

    let total = sum!(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
    println!("Total: {}", total);

    println!("sum!(0) = {}", sum!()); // Total: 0
    println!("sum!(5) = {}", sum!(5)); // Total: 5
    println!("sum!(1, 2, 3) = {}", sum!(1, 2, 3)); // Total: 6
    println!("sum!(10, 20, 30) = {}", sum!(10, 20, 30)); // Total: 60


    greet!(); // Welcome to Rust programming
    greet!("Alice"); // Welcome to Rust programming, Alice!

}