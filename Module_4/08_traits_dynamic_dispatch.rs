trait Draw {
    fn draw(&self);
}

struct Circle;
struct Square;

impl Draw for Circle {
    fn draw(&self) {
        println!("Drawing Circle");
    }
}

impl Draw for Square {
    fn draw(&self) {
        println!("Drawing Square");
    }
}

// Static Dispatch (monomorphization)
fn draw_static<T: Draw>(item: T) {
    item.draw();  // Compiler generates separate code for each type
}

// Dynamic Dispatch (trait object)
fn draw_dynamic(item: &dyn Draw) {
    item.draw();  // Single function, uses vtable at runtime
}

fn main() {
    let circle = Circle;
    let square = Square;
    
    draw_static(circle);  // Generated: draw_static_Circle
    draw_static(square);   // Generated: draw_static_Square
    
    // Dynamic dispatch - can mix types!
    let shapes: Vec<&dyn Draw> = vec![&Circle, &Square];
    for shape in shapes {
        shape.draw();  // Runtime dispatch
    }
}
