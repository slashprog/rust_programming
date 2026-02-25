struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

fn main() {
    let user1 = User {
        email: String::from("user1@example.com"),
        username: String::from("user1"),
        active: true,
        sign_in_count: 1,
    };
    
    // Struct update syntax (..user1 moves fields!)
    let user2 = User {
        email: String::from("user2@example.com"),
        username: String::from("user2"),
        ..user1  // rest from user1
    };
    
    // Methods and associated functions
    impl User {
        // Associated function (static method)
        fn new(email: String, username: String) -> Self {
            User {
                email,
                username,
                active: true,
                sign_in_count: 1,
            }
        }
        
        // Method (immutable self)
        fn get_email(&self) -> &str {
            &self.email
        }
        
        // Method (mutable self)
        fn deactivate(&mut self) {
            self.active = false;
        }
    }
}
