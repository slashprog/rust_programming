struct User<'a> {
    username: &'a str, // This 'a is a lifetime annotation
    email: String,     // This is owned, so it doesn't need an annotation
}

fn main() {
    let name = String::from("Rustacean");
    
    let user = User {
        username: &name, // Borrowing name
        email: String::from("hello@rust.org"),
    };

    // If we dropped 'name' here, 'user' would become invalid.
    // Rust's borrow checker ensures 'user' dies before 'name' does.
}
/*
fn main() {
    let user;
    {
        let name = String::from("Short-lived");
        user = User { username: &name, email: String::from("...") };
    } // 'name' is dropped here!
    
    // println!("{}", user.username); // ERROR: `name` does not live long enough
}
*/
