#[derive(Debug)]
struct User<'a> {
    username: &'a str,
    email: &'a str,
    sign_in_count: u64,
    active: bool,
}

fn main() {
    let user1 = User {
        username: "John Doe",
        email: "john@gmail.com",
        sign_in_count: 5,
        active: true
    };

    let user2 = User {
        username: "Jane Smith",
        ..user1
    };
    
    println!("user1 = {:?}", user1);
    println!("user2 = {:?}", user2);
}

