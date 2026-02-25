struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

// Methods and associated functions
impl User {
    // Associated function (static method)
    fn new(email: &str, username: &str) -> Self {
        User {
            email: email.to_string(),
            username: username.to_string(),
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


fn main() {
    let mut user = User::new("user@example.com", "rustacean");
    println!("User: {}, email: {}, active: {}, sign_in_count: {}", 
        user.username, user.email, user.active, user.sign_in_count);

    println!("User email via method: {}", user.get_email());
    
    println!("Deactivating user...");
    user.deactivate();

    println!("User: {}, email: {}, active: {}, sign_in_count: {}", 
        user.username, user.email, user.active, user.sign_in_count);

}
