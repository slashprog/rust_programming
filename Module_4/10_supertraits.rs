// Traits can depend on other traits
trait Shape {
    fn area(&self) -> f64;
}

// Circle requires Shape (supertrait)
trait Circle: Shape {
    fn radius(&self) -> f64;
    
    // Can use supertrait methods
    fn diameter(&self) -> f64 {
        self.radius() * 2.0
    }
    
    fn circumference(&self) -> f64 {
        2.0 * std::f64::consts::PI * self.radius()
    }
}

struct MyCircle {
    r: f64,
}

// Must implement both traits
impl Shape for MyCircle {
    fn area(&self) -> f64 {
        std::f64::consts::PI * self.r * self.r
    }
}

impl Circle for MyCircle {
    fn radius(&self) -> f64 {
        self.r
    }
}

fn print_circle_info(c: &impl Circle) {
    println!("Area: {}, Circumference: {}", 
             c.area(),        // From Shape
             c.circumference()); // From Circle
}