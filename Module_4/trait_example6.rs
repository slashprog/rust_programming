trait Shape {
    fn area(&self) -> f64;
}

trait Circle: Shape {
    fn radius(&self) -> f64;

    fn diameter(&self) -> f64 {
        self.radius() * 2.0
    }
    
    fn perimeter(&self) -> f64 {
        2.0 * std::f64::consts::PI * self.radius()
    }
}


struct MyCircle {
    radius: f64,
}

impl Shape for MyCircle {
    fn area(&self) -> f64 {
        std::f64::consts::PI * self.radius * self.radius
    }
}

impl Circle for MyCircle {

    fn radius(&self) -> f64 {
        self.radius
    }
}



fn main() {
    let circle = MyCircle { radius: 5.0 };

    println!("Area: {}", circle.area());
    println!("Diameter: {}", circle.diameter());
    println!("Perimeter: {}", circle.perimeter());
}