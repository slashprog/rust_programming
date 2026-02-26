// Basic trait definition
trait MyTrait {
    // Required method (no default)
    fn required(&self) -> i32;
    
    // Provided method (with default)
    fn provided(&self) -> i32 {
        self.required() * 2
    }
    
    // Associated type (advanced)
    type Output;
    
    // Associated constant
    const ID: u32;
}

// Multiple traits per type
struct MyStruct;

trait TraitA { fn a(&self); }
trait TraitB { fn b(&self); }

impl TraitA for MyStruct {
    fn a(&self) { println!("A"); }
}

impl TraitB for MyStruct {
    fn b(&self) { println!("B"); }
}

// Traits can have multiple methods
trait Shape {
    fn area(&self) -> f64;
    fn perimeter(&self) -> f64;
    fn name(&self) -> &'static str;
}
