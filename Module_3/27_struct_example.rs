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
struct AlwaysEqual;

fn main() {
    // Creating instances
    let user = User {
        email: String::from("user@example.com"),
        username: String::from("rustacean"),
        active: true,
        sign_in_count: 1,
    };
    
    let black = Color(0, 0, 0);
    let origin = Point(0, 0, 0);
    
    let subject = AlwaysEqual;
}