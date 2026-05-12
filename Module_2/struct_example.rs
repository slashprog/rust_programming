#[derive(Debug)] // This allows us to print the User struct using {:?}
struct User {
    name: String,
    age: u32,
}

#[derive(Debug)] // This allows us to print the Test struct using {:?}
struct Test; // This is an empty struct, it doesn't have any fields - Unit-like struct

#[derive(Debug)] // This allows us to print the Point struct using {:?}
struct Point(i32, i32); // This is a tuple struct, it has unnamed fields

fn main() {
    let user1 = User {
        name: String::from("Alice"),
        age: 30,
    };

    let t1 = Test; // Creating an instance of the unit-like struct

    println!("User Name: {}, Age: {}", user1.name, user1.age);
    println!("This is an instance of the Test struct: {:?}", t1);

    println!("User1 = {:#?}", user1); // This line will cause an error because User does not implement the Debug trait

    let p1 = Point(10, 20);
    let p2 = Point(30, 40);
    println!("Point 1: {:?}", p1);
    println!("Point 2: {:?}", p2);
}