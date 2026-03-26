struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

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

    fn set_email(&mut self, new_email: String) {
        self.email = new_email;
    }
    
    // Method (mutable self)
    fn deactivate(&mut self) {
        self.active = false;
    }
}



fn main() {
    let mut user1 = User::new(String::from("user1@example.com"), String::from("user1"));
    println!("User email: {}", user1.get_email());
    user1.deactivate();
    println!("User active: {}", user1.active);

    user1.set_email(String::from("new_email@example.com"));
    println!("User email: {}", user1.get_email());

}
