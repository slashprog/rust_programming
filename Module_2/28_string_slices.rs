fn main() {
    let s = String::from("hello world");
    
    // Create slices
    let hello = &s[0..5];    // "hello"
    let world = &s[6..11];   // "world"
    
    // Shorthand syntax
    let slice = &s[..5];      // from start to index 5
    let slice = &s[6..];      // from index 6 to end
    let slice = &s[..];       // entire string
    
    println!("{} {}", hello, world);
    
    // String literals ARE slices!
    let literal: &str = "hello world";
    // type is &str (string slice), not String
}

// Memory layout:
// s: String                slice: &str
// ┌────┬────┬────┐         ┌────────────┐
// │ptr │len │cap │         │ptr  ────┐  │
// └─┼──┴────┴────┘         │len: 5   │  │
//   ↓                      └─────────│──┘
// ┌──────────────────┐               ↓
// │ h e l l o world  │ ←─────────────┘
// └──────────────────┘
