macro_rules! sum {
    // Base: single value
    ($x:expr) => ($x);
    // Recursive: first + rest
    ($x:expr, $($rest:expr),+) => {
        $x + sum!($($rest),+)
    };
}

fn main() {
    println!("{}", sum!(1, 2, 3, 4));  // 10
}
