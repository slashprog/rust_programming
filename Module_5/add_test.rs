fn add(x: i32, y: i32) -> i32 {
    x + y
    // View the raw AST
    // $ cargo rustc -- -Z unpretty=ast-tree
}

fn main() {
    for i in 0..10 {
        println!("{} + {} = {}", i, i, add(i, i));
    }
}