#[cfg(feature = "serde")]
fn main() {
    println!("serde feature is enabled!");
}

#[cfg(not(feature = "serde"))]
fn main() {
    println!("Hello, world!");
}
