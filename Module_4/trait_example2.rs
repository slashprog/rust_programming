struct Circle {
    radius: f64
}

struct Square {
    side: f64
}

trait Area {
    fn area(&self) -> f64;
}

impl Area for Circle {
    fn area(&self) -> f64 {
        std::f64::consts::PI * self.radius * self.radius
    }
}

impl Area for Square {
    fn area(&self) -> f64 {
        self.side * self.side
    }
}

fn find_area(shape: &impl Area) -> f64 {
    shape.area()
}

fn create_shape(shape_type: &str) -> Box<dyn Area> {
    match shape_type {
        "circle" => Box::new(Circle { radius: 3.0 }),
        "square" => Box::new(Square { side: 2.0 }),
        _ => panic!("Unknown shape type"),
    }
}

fn main() {
    let circle = Circle { radius: 5.0 };
    let square = Square { side: 4.0 };

    println!("Circle area: {}", find_area(&circle));
    println!("Square area: {}", find_area(&square));

    let shape = create_shape("circle");
    println!("Created shape area: {}", shape.area());

}

