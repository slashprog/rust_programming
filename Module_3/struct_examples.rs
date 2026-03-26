
#[derive(Debug)]
struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

struct Color(i32, i32, i32);
struct Point(i32, i32, i32);

#[derive(Debug)]
struct AlwaysEqual;

fn main() {
    let user1 = User {
        email: String::from("someone@example.com"),
        username: String::from("someuser"),
        active: true,
        sign_in_count: 1,
    };

    let black = Color(0, 0, 0);
    let origin = Point(0, 0, 0);
    let subject = AlwaysEqual;

    println!("User email: {}", user1.email);
    println!("User username: {}", user1.username);
    println!("User active: {}", user1.active);
    println!("User sign_in_count: {}", user1.sign_in_count);

    println!("Black color: ({}, {}, {})", black.0, black.1, black.2);
    println!("Origin point: ({}, {}, {})", origin.0, origin.1, origin.2);
    println!("Subject is always equal: {:?}", subject);

    println!("user1 = {:?}", user1); // This will work because User now implements the Debug trait

}