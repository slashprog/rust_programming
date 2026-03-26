// Exercise: Create a Car class with fields for make, model, owner, and year. 
// Implement a method to display the car's information when car.drive() is invoked.
// Also implement method to sell the car to another person, which updates the owner field.

struct Car {
    make: String,
    model: String,
    owner: String,
    year: u32,
}

impl Car {
    fn new(make: String, model: String, owner: String, year: u32) -> Self {
        Car { make, model, owner, year }
    }

    fn drive(&self) {
        println!("{} {} is being driven by {}.", self.year, self.make, self.owner);
    }
    
    fn sell(&mut self, new_owner: String) {
        println!("{} {} is being sold from {} to {}.", self.year, self.make, self.owner, new_owner);
        self.owner = new_owner;
    }
}

fn main() {
    let mut my_car = Car::new(String::from("Toyota"), String::from("Corolla"), String::from("Alice"), 2020);
    
    my_car.drive();
    
    my_car.sell(String::from("Bob"));
    
    my_car.drive();
}   