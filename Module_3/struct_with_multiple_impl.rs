struct User {
    name: String,
    grade: u32,
}

impl User {
    fn new(name: String, grade: u32) -> Self {
        User { name, grade }
    }
    
    fn display(&self) {
        println!("Name: {}, Grade: {}", self.name, self.grade);
    }
}

impl User {
    fn update_grade(&mut self, new_grade: u32) {
        self.grade = new_grade;
    }

//    fn display(&self) {
//        println!("Updated Name: {}, Updated Grade: {}", self.name, self.grade);
//    }
}

fn main() {
    let mut user1 = User::new(String::from("Alice"), 85);
    user1.display();
    
    user1.update_grade(90);
    user1.display();
}