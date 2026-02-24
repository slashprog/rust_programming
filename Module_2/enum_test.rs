#[derive(Debug)]
enum City {
    Noida,
    Hyderabad(i32),
    Mumbai,
    Chennai,
    Bengaluru
}

fn main() {
    let city1 = City::Mumbai;
    let city2 = City::Hyderabad(10000);

    println!("City: {:?}", city1);
    println!("City: {:?}", city2);
    
    match city1 {
        City::Noida => println!("UP"),
        City::Hyderabad(population) => println!("Telangana, Population: {}", population),
        City::Mumbai => println!("Maharashtra"),
        City::Chennai => println!("Tamil Nadu"),
        City::Bengaluru => println!("Karnataka"),
    }

    let state = match city2 {
        City::Noida => "UP",
        City::Hyderabad(p) => {
              if p > 5000000 { 
                  "Telangana with large population" 
              } else {
                  "Telangana with small population"
              }
            },
        City::Mumbai => "Maharashtra",
        City::Chennai => "Tamil Nadu",
        City::Bengaluru => "Karnataka",
    };

    println!("State: {}", state);

}