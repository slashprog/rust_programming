// 1. Named-field struct (most common)
struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

// 2. Tuple struct (named tuple)
struct Color(i32, i32, i32);
struct Point(i32, i32, i32);

// 3. Unit struct (no fields)
// struct AlwaysEqual;

fn main() {
    // Creating instances
    let user = User {
        email: String::from("user@example.com"),
        username: String::from("rustacean"),
        active: true,
        sign_in_count: 1,
    };

    let user2 = User {
        username: String::from("another_user"),
        email: String::from("test@gmail.com"),
        ..user  // Use remaining fields from user
    };

    let black = Color(0, 0, 0);
    let origin = Point(0, 0, 0);
    
    // let subject = AlwaysEqual;

    println!("User: {}, email: {}, active: {}, sign_in_count: {}", 
        user.username, user.email, user.active, user.sign_in_count);
    println!("Color: ({}, {}, {})", black.0, black.1, black.2);
    println!("Point: ({}, {}, {})", origin.0, origin.1, origin.2);
    // println!("AlwaysEqual instance created: {:?}", subject);

    println!("User2: {}, email: {}, active: {}, sign_in_count: {}", 
        user2.username, user2.email, user2.active, user2.sign_in_count);
}