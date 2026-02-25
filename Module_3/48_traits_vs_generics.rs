trait Animal {
    fn make_sound(&self);
}

struct Dog;
struct Cat;

impl Animal for Dog {
    fn make_sound(&self) {
        println!("Woof!");
    }
}

impl Animal for Cat {
    fn make_sound(&self) {
        println!("Meow!");
    }
}

// Static dispatch (generics) - monomorphized
fn static_dispatch<T: Animal>(animal: T) {
    animal.make_sound();
}

// Dynamic dispatch (trait objects) - vtable at runtime
fn dynamic_dispatch(animal: &dyn Animal) {
    animal.make_sound();
}

fn main() {
    let dog = Dog;
    let cat = Cat;
    
    static_dispatch(dog);  // Creates specialized version for Dog
    static_dispatch(cat);  // Creates specialized version for Cat
    
    // For dynamic dispatch, can mix types
    let animals: Vec<&dyn Animal> = vec![&Dog, &Cat];
    for animal in animals {
        dynamic_dispatch(animal);
    }
}
