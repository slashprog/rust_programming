struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

// Methods and associated functions
impl User {
    // Associated function (static method / class methods)
    fn create(email: &str, username: &str) -> Self {
        User {
            email: email.to_string(),
            username: username.to_string(),
            active: true,
            sign_in_count: 1,
        }
    }
    
    // Method (immutable self) - getter method
    fn get_email(&self) -> &str {
        &self.email
    }
    
    // Method (mutable self) - setter method
    fn set_email(&mut self, new_email: String) {
        self.email = new_email;
    }

    // Method (mutable self)
    fn deactivate(&mut self) {
        self.active = false;
    }

    // Method (mutable self)
    fn activate(&mut self) {
        self.active = true;
    }

    fn is_active(&self) -> bool {
        self.active
    }
}

fn main() {

    let user1 = User::create("John Doe", "john_doe@gmail.com");

    println!("User1: {}, email: {}, active: {}, sign_in_count: {}", 
        user1.username, user1.get_email(), user1.is_active(), user1.sign_in_count);
        
}
