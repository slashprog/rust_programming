struct RefHolder<'a> {
    reference: &'a i32,
    // owned_field: i32,  // No lifetime needed for owned types
}

struct MultiRef<'a, 'b> {
    first: &'a str,
    second: &'b str,
}

// Methods on lifetime-annotated structs
impl<'a> RefHolder<'a> {
    // Returns reference with struct's lifetime (Rule 3)
    fn get_ref(&self) -> &i32 {
        self.reference
    }
    
    // Separate lifetime for parameter
    fn compare<'b>(&self, other: &'b i32) -> bool {
        *self.reference == *other
    }
}

// Static lifetime - lives entire program
struct StaticHolder {
    data: &'static str,  // Only string literals, constants
}

fn main() {
    let x = 42;
    let holder = RefHolder { reference: &x };
    println!("{}", holder.get_ref());
    
    let static_holder = StaticHolder { data: "forever" };
}
