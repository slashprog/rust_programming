# Inheritance in Rust: Struct-Based Approaches

Rust doesn't have traditional inheritance like object-oriented languages. Instead, it uses composition and traits. Here's how to achieve similar patterns:

## 1. **Composition over Inheritance**

```rust
// Base functionality through composition
struct Name {
    first: String,
    last: String,
}

impl Name {
    fn new(first: &str, last: &str) -> Self {
        Name {
            first: first.to_string(),
            last: last.to_string(),
        }
    }
    
    fn full_name(&self) -> String {
        format!("{} {}", self.first, self.last)
    }
}

// "Inherit" by embedding the struct
struct Person {
    name: Name,  // Composition
    age: u32,
}

impl Person {
    fn new(first: &str, last: &str, age: u32) -> Self {
        Person {
            name: Name::new(first, last),
            age,
        }
    }
    
    // Delegate to the composed struct
    fn full_name(&self) -> String {
        self.name.full_name()
    }
    
    fn introduce(&self) -> String {
        format!("I'm {}, age {}", self.full_name(), self.age)
    }
}

struct Employee {
    person: Person,  // Further composition
    position: String,
    salary: f64,
}

impl Employee {
    fn new(first: &str, last: &str, age: u32, position: &str, salary: f64) -> Self {
        Employee {
            person: Person::new(first, last, age),
            position: position.to_string(),
            salary,
        }
    }
    
    // Delegate through multiple layers
    fn full_name(&self) -> String {
        self.person.full_name()
    }
    
    fn introduce(&self) -> String {
        format!(
            "I'm {}, a {} making ${:.2}",
            self.full_name(),
            self.position,
            self.salary
        )
    }
}

fn main() {
    let emp = Employee::new("John", "Doe", 30, "Engineer", 85000.0);
    println!("{}", emp.introduce());
}
```

## 2. **Traits for Polymorphism**

```rust
// Define behavior through traits
trait Animal {
    fn name(&self) -> &str;
    fn speak(&self) -> String {
        format!("{} makes a sound", self.name())
    }
    fn eat(&self) -> String {
        format!("{} is eating", self.name())
    }
}

// Base struct with common fields
struct BaseAnimal {
    name: String,
    age: u8,
}

impl BaseAnimal {
    fn new(name: &str, age: u8) -> Self {
        BaseAnimal {
            name: name.to_string(),
            age,
        }
    }
}

// Dog "inherits" from BaseAnimal through composition
struct Dog {
    base: BaseAnimal,
    breed: String,
}

impl Dog {
    fn new(name: &str, age: u8, breed: &str) -> Self {
        Dog {
            base: BaseAnimal::new(name, age),
            breed: breed.to_string(),
        }
    }
    
    fn wag_tail(&self) -> String {
        format!("{} is wagging its tail", self.base.name)
    }
}

impl Animal for Dog {
    fn name(&self) -> &str {
        &self.base.name
    }
    
    fn speak(&self) -> String {
        format!("{} says: Woof!", self.name())
    }
}

// Cat also "inherits" BaseAnimal
struct Cat {
    base: BaseAnimal,
    color: String,
}

impl Cat {
    fn new(name: &str, age: u8, color: &str) -> Self {
        Cat {
            base: BaseAnimal::new(name, age),
            color: color.to_string(),
        }
    }
    
    fn purr(&self) -> String {
        format!("{} is purring", self.base.name)
    }
}

impl Animal for Cat {
    fn name(&self) -> &str {
        &self.base.name
    }
    
    fn speak(&self) -> String {
        format!("{} says: Meow!", self.name())
    }
}

fn animal_party(animals: Vec<&dyn Animal>) {
    for animal in animals {
        println!("{}", animal.speak());
    }
}

fn main() {
    let dog = Dog::new("Rex", 3, "German Shepherd");
    let cat = Cat::new("Whiskers", 2, "Tabby");
    
    animal_party(vec![&dog, &cat]);
    
    // Access specific methods
    println!("{}", dog.wag_tail());
    println!("{}", cat.purr());
}
```

## 3. **Default Implementations with Extension Traits**

```rust
// Base trait with default implementations
trait Vehicle {
    fn make(&self) -> &str;
    fn model(&self) -> &str;
    fn year(&self) -> u16;
    
    // Default implementations (like base class methods)
    fn description(&self) -> String {
        format!("{} {} ({})", self.year(), self.make(), self.model())
    }
    
    fn start(&self) -> String {
        format!("{} is starting", self.description())
    }
}

// Car extends Vehicle
struct Car {
    make: String,
    model: String,
    year: u16,
    doors: u8,
}

impl Car {
    fn new(make: &str, model: &str, year: u16, doors: u8) -> Self {
        Car {
            make: make.to_string(),
            model: model.to_string(),
            year,
            doors,
        }
    }
    
    fn honk(&self) -> String {
        format!("{} goes: Beep beep!", self.description())
    }
}

impl Vehicle for Car {
    fn make(&self) -> &str { &self.make }
    fn model(&self) -> &str { &self.model }
    fn year(&self) -> u16 { self.year }
}

// Motorcycle also extends Vehicle
struct Motorcycle {
    make: String,
    model: String,
    year: u16,
    has_sidecar: bool,
}

impl Motorcycle {
    fn new(make: &str, model: &str, year: u16, has_sidecar: bool) -> Self {
        Motorcycle {
            make: make.to_string(),
            model: model.to_string(),
            year,
            has_sidecar,
        }
    }
    
    fn wheelie(&self) -> String {
        format!("{} is popping a wheelie!", self.description())
    }
}

impl Vehicle for Motorcycle {
    fn make(&self) -> &str { &self.make }
    fn model(&self) -> &str { &self.model }
    fn year(&self) -> u16 { self.year }
}

fn main() {
    let car = Car::new("Toyota", "Camry", 2022, 4);
    let bike = Motorcycle::new("Harley", "Sportster", 2021, false);
    
    println!("{}", car.start());
    println!("{}", car.honk());
    println!("{}", bike.start());
    println!("{}", bike.wheelie());
}
```

## 4. **Generics with Trait Bounds (Static Dispatch)**

```rust
trait Drawable {
    fn draw(&self);
}

struct Circle {
    radius: f64,
    x: f64,
    y: f64,
}

impl Circle {
    fn new(radius: f64, x: f64, y: f64) -> Self {
        Circle { radius, x, y }
    }
}

impl Drawable for Circle {
    fn draw(&self) {
        println!("Drawing circle at ({}, {}) with radius {}", self.x, self.y, self.radius);
    }
}

struct Rectangle {
    width: f64,
    height: f64,
    x: f64,
    y: f64,
}

impl Rectangle {
    fn new(width: f64, height: f64, x: f64, y: f64) -> Self {
        Rectangle { width, height, x, y }
    }
}

impl Drawable for Rectangle {
    fn draw(&self) {
        println!("Drawing rectangle at ({}, {}) with dimensions {}x{}", self.x, self.y, self.width, self.height);
    }
}

// Generic function that works with any Drawable type
fn draw_shape<T: Drawable>(shape: &T) {
    shape.draw();
}

// Multiple bounds
fn draw_and_log<T: Drawable + std::fmt::Debug>(shape: &T) {
    println!("Drawing: {:?}", shape);
    shape.draw();
}

#[derive(Debug)]
struct Triangle {
    base: f64,
    height: f64,
}

impl Drawable for Triangle {
    fn draw(&self) {
        println!("Drawing triangle with base {} and height {}", self.base, self.height);
    }
}

fn main() {
    let circle = Circle::new(5.0, 10.0, 10.0);
    let rect = Rectangle::new(10.0, 20.0, 0.0, 0.0);
    let triangle = Triangle { base: 6.0, height: 8.0 };
    
    draw_shape(&circle);
    draw_shape(&rect);
    draw_shape(&triangle);
    
    draw_and_log(&triangle);
}
```

## 5. **Enum-Based "Inheritance" (Sum Types)**

```rust
// Enum as a closed set of types (like sealed classes)
enum Shape {
    Circle(Circle),
    Rectangle(Rectangle),
    Triangle(Triangle),
}

// Reuse the structs from previous example
struct Circle { radius: f64, x: f64, y: f64 }
struct Rectangle { width: f64, height: f64, x: f64, y: f64 }
struct Triangle { base: f64, height: f64 }

impl Shape {
    fn area(&self) -> f64 {
        match self {
            Shape::Circle(c) => std::f64::consts::PI * c.radius * c.radius,
            Shape::Rectangle(r) => r.width * r.height,
            Shape::Triangle(t) => 0.5 * t.base * t.height,
        }
    }
    
    fn description(&self) -> String {
        match self {
            Shape::Circle(c) => format!("Circle(radius={})", c.radius),
            Shape::Rectangle(r) => format!("Rectangle({}x{})", r.width, r.height),
            Shape::Triangle(t) => format!("Triangle(base={}, height={})", t.base, t.height),
        }
    }
}

fn main() {
    let shapes = vec![
        Shape::Circle(Circle { radius: 5.0, x: 0.0, y: 0.0 }),
        Shape::Rectangle(Rectangle { width: 10.0, height: 20.0, x: 0.0, y: 0.0 }),
        Shape::Triangle(Triangle { base: 6.0, height: 8.0 }),
    ];
    
    for shape in shapes {
        println!("{} has area: {:.2}", shape.description(), shape.area());
    }
}
```

## 6. **Extension Methods Pattern**

```rust
// Original struct
struct Vector2D {
    x: f64,
    y: f64,
}

impl Vector2D {
    fn new(x: f64, y: f64) -> Self {
        Vector2D { x, y }
    }
    
    fn magnitude(&self) -> f64 {
        (self.x * self.x + self.y * self.y).sqrt()
    }
}

// Extension trait (like adding methods to existing types)
trait VectorExtensions {
    fn normalize(&self) -> Vector2D;
    fn dot(&self, other: &Vector2D) -> f64;
    fn angle(&self, other: &Vector2D) -> f64;
}

impl VectorExtensions for Vector2D {
    fn normalize(&self) -> Vector2D {
        let mag = self.magnitude();
        Vector2D {
            x: self.x / mag,
            y: self.y / mag,
        }
    }
    
    fn dot(&self, other: &Vector2D) -> f64 {
        self.x * other.x + self.y * other.y
    }
    
    fn angle(&self, other: &Vector2D) -> f64 {
        let dot = self.dot(other);
        let mag_product = self.magnitude() * other.magnitude();
        (dot / mag_product).acos()
    }
}

fn main() {
    let v1 = Vector2D::new(3.0, 4.0);
    let v2 = Vector2D::new(1.0, 0.0);
    
    println!("Magnitude: {}", v1.magnitude());
    println!("Normalized: ({:.2}, {:.2})", v1.normalize().x, v1.normalize().y);
    println!("Dot product: {}", v1.dot(&v2));
    println!("Angle: {:.2} radians", v1.angle(&v2));
}
```

## 7. **Builder Pattern with Inheritance-like Chaining**

```rust
#[derive(Debug)]
struct Pizza {
    size: String,
    crust: String,
    sauce: Option<String>,
    cheese: bool,
    toppings: Vec<String>,
}

impl Pizza {
    fn new(size: &str, crust: &str) -> Self {
        Pizza {
            size: size.to_string(),
            crust: crust.to_string(),
            sauce: None,
            cheese: true,
            toppings: Vec::new(),
        }
    }
}

// Builder trait (like base class)
trait PizzaBuilder {
    fn sauce(mut self, sauce: &str) -> Self where Self: Sized;
    fn cheese(mut self, cheese: bool) -> Self where Self: Sized;
    fn topping(mut self, topping: &str) -> Self where Self: Sized;
    fn build(self) -> Pizza;
}

// Implement for Pizza itself (like inheriting builder methods)
impl PizzaBuilder for Pizza {
    fn sauce(mut self, sauce: &str) -> Self {
        self.sauce = Some(sauce.to_string());
        self
    }
    
    fn cheese(mut self, cheese: bool) -> Self {
        self.cheese = cheese;
        self
    }
    
    fn topping(mut self, topping: &str) -> Self {
        self.toppings.push(topping.to_string());
        self
    }
    
    fn build(self) -> Pizza {
        self
    }
}

// Specialized pizza types
struct MargheritaPizza {
    base: Pizza,
    extra_basil: bool,
}

impl MargheritaPizza {
    fn new(size: &str) -> Self {
        MargheritaPizza {
            base: Pizza::new(size, "thin"),
            extra_basil: false,
        }
    }
    
    fn extra_basil(mut self) -> Self {
        self.extra_basil = true;
        self
    }
    
    fn build(self) -> Pizza {
        let mut pizza = self.base
            .sauce("tomato")
            .cheese(true)
            .topping("mozzarella");
        
        if self.extra_basil {
            pizza = pizza.topping("basil");
        }
        
        pizza.build()
    }
}

fn main() {
    // Using builder pattern
    let custom_pizza = Pizza::new("large", "thick")
        .sauce("bbq")
        .cheese(true)
        .topping("pepperoni")
        .topping("mushrooms")
        .build();
    
    println!("Custom: {:?}", custom_pizza);
    
    // Using specialized constructor
    let margherita = MargheritaPizza::new("medium")
        .extra_basil()
        .build();
    
    println!("Margherita: {:?}", margherita);
}
```

## Key Differences from Traditional Inheritance

| OOP Inheritance | Rust Approach |
|----------------|---------------|
| Class inheritance | Composition + Traits |
| Method overriding | Trait implementation |
| Abstract classes | Traits with default methods |
| Protected fields | `pub(crate)` or module privacy |
| `super()` calls | Manual delegation |
| Downcasting | Enum matching |
| Multiple inheritance | Multiple trait bounds |

## When to Use Each Pattern

| Pattern | Use Case |
|---------|----------|
| **Composition** | When you need to reuse data fields |
| **Traits** | When you need polymorphic behavior |
| **Enums** | When the set of types is closed and known |
| **Generics** | When you need static dispatch (performance) |
| **Extension traits** | When adding methods to existing types |
| **Builder pattern** | When constructing complex objects |

Rust's approach is more explicit but leads to more maintainable code by avoiding the pitfalls of deep inheritance hierarchies.