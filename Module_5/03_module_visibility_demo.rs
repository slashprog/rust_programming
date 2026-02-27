mod visibility_demo {
    // Default: private
    fn private_function() {}
    
    // Public: accessible anywhere
    pub fn public_function() {}
    
    // Public within crate only
    pub(crate) fn crate_visible() {}
    
    // Public within super module
    pub(super) fn parent_visible() {}
    
    // Public within specific path
    pub(in crate::visibility_demo) fn restricted() {}
    
    // Struct fields
    pub struct OpenStruct {
        pub public_field: i32,
        private_field: i32,  // Private field
    }
    
    // Tuple struct with private fields
    pub struct Wrapper(i32);  // Field is private
    
    // Enum variants inherit visibility
    pub enum Appetizer {
        Soup,       // Public
        Salad,      // Public
    }
}

// Usage
fn main() {
    // Can access public items
    visibility_demo::public_function();
    
    // Can't access private
    // visibility_demo::private_function();  // ERROR!
    
    // Struct with public field
    let s = visibility_demo::OpenStruct {
        public_field: 10,
        // private_field: 20,  // ERROR!
    };
    
    // Enum - all variants public
    let soup = visibility_demo::Appetizer::Soup;
}
