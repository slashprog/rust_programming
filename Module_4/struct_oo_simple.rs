struct Car {
    make: String,
    model: String,
    year: u16,
}

struct Laptop {
    brand: String,
    model: String,
    year: u16,
}

impl Laptop {
    fn new(brand: &str, model: &str, year: u16) -> Self {
        Laptop { brand: brand.to_string(), model: model.to_string(), year }
    }

    fn display_info(&self) {
        println!("Laptop: {} {} ({})", self.brand, self.model, self.year);
    }

    fn open_app(&self, app_name: &str) {
        println!("Opening {} on {} {}", app_name, self.brand, self.model);
    }
}


impl Car {
    fn new(make: &str, model: &str, year: u16) -> Self {
        Car { make: make.to_string(), model: model.to_string(), year }
    }

    fn display_info(&self) {
        println!("Car: {} {} ({})", self.make, self.model, self.year);
    }

    fn drive_to(&self, destination: &str) {
        println!("Driving {} {} to {}", self.make, self.model, destination);
    }
}

trait Sellable {
    fn sell_to(&self, buyer: &str) {
        println!("Selling to {}", buyer);
    }
}

impl Sellable for Laptop {}
impl Sellable for Car {}


struct SUV {
    car: Car,
    info: String
}


fn main() {
    let my_car = Car::new("Toyota", "Camry", 2020);
    let my_laptop = Laptop::new("Apple", "MacBook Pro", 2021);
    my_laptop.display_info();
    my_laptop.open_app("VS Code");

    my_car.display_info();
    my_car.drive_to("work");

    my_laptop.sell_to("Alice");
    my_car.sell_to("Bob");

    let suv = SUV { car: Car::new("Honda", "CR-V", 2022), 
                    info: "A compact SUV".to_string() };

    suv.car.display_info();

}