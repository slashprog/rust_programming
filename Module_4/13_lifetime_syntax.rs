/ Lifetime annotations: 'a, 'b, 'static, etc.

// Function with one lifetime parameter
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() { x } else { y }
}

// Multiple lifetime parameters
fn complex<'a, 'b>(x: &'a str, y: &'b str) -> &'a str {
    x  // Return references with different lifetimes
}

// Lifetime in structs
struct ImportantExcerpt<'a> {
    part: &'a str,  // Struct holds a reference
}

impl<'a> ImportantExcerpt<'a> {
    fn level(&self) -> i32 {
        3
    }
    
    fn announce_and_return_part(&self, announcement: &str) -> &str {
        println!("Attention please: {}", announcement);
        self.part  // Returns reference from struct
    }
}

fn main() {
    let novel = String::from("Call me Ishmael...");
    let first_sentence = novel.split('.').next().expect("Could not find a '.'");
    let excerpt = ImportantExcerpt { part: first_sentence };
}