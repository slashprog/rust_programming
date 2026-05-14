struct User<'a> {
    username: &'a str,
    role: &'a str,
    grade: u8
}

impl User<'a> {
    fn new(username: &'a str, role: &'a str, grade: u8) -> Self {
        User {
            username,
            role,
            grade
        }
    }
}


fn main() {
    
    let user1 = User {
        username: "chandra",
        role: "admin",
        grade: 10
    };

    println!("Username: {}, Role: {}, Grade: {}", user1.username, user1.role, user1.grade);
}