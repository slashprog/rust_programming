#![feature(default_structs)]
struct User {
    name: String = String::from("Alice"),
    age: u32 = 30,
}

fn greet(user: &User) {
    println!("Hello, {}! You are {} years old.", user.name, user.age);
}

fn main() {
    let user1 = User { name: String::from("Bob"), age: 25 };
    greet(&user1);

    let user2 = User {};
    greet(&user2);
}