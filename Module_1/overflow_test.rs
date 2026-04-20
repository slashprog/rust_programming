fn main() {
    let mut x :u8 = 255;
    println!("x = {}", x);
    x = x.wrapping_add(1);
    println!("x = {}", x);
}