use std::fmt::Display;

struct Pair<T> {
    x: T,
    y: T,
}

// Implement methods for ALL T
impl<T> Pair<T> {
    fn new(x: T, y: T) -> Self {
        Self { x, y }
    }
}

// Implement methods ONLY for T that implements Display + PartialOrd
impl<T: Display + PartialOrd> Pair<T> {
    fn cmp_display(&self) {
        if self.x >= self.y {
            println!("The largest is x = {}", self.x);
        } else {
            println!("The largest is y = {}", self.y);
        }
    }
}

// Conditional implementation based on traits
trait Print {
    fn print(&self);
}

// Automatically implement Print for all types that implement Display
impl<T: Display> Print for T {
    fn print(&self) {
        println!("Value: {}", self);
    }
}
