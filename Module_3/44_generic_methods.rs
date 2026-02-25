struct Point<T> {
    x: T,
    y: T,
}

impl<T> Point<T> {
    // Method that returns reference to x
    fn x(&self) -> &T {
        &self.x
    }
    
    // Method that consumes and returns new Point with different type
    fn mixup<U>(self, other: Point<U>) -> Point<U> {
        Point {
            x: other.x,
            y: other.y,
        }
    }
}

// Specialized implementation for specific types
impl Point<f64> {
    // Only available for Point<f64>
    fn distance_from_origin(&self) -> f64 {
        (self.x.powi(2) + self.y.powi(2)).sqrt()
    }
}

fn main() {
    let p = Point { x: 5, y: 10 };
    println!("x = {}", p.x());
    
    let p1 = Point { x: 5, y: 10 };
    let p2 = Point { x: 1.0, y: 4.0 };
    let p3 = p1.mixup(p2);  // p3 is Point<f64>
    
    let float_point = Point { x: 3.0, y: 4.0 };
    println!("Distance: {}", float_point.distance_from_origin());
}
