trait Speak {
    fn say(&self);
}

struct Dog;
impl Speak for Dog { fn say(&self) { println!("Woof!"); } }

struct Cat;
impl Speak for Cat { fn say(&self) { println!("Meow!"); } }

fn main() {
    // A vector of "anything that implements Speak"
    let animals: Vec<Box<dyn Speak>> = vec![
        Box::new(Dog),
        Box::new(Cat),
    ];

    for animal in animals {
        animal.say();
    }
}