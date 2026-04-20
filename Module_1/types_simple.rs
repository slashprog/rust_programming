fn main() {
    let mut x :u8 = 255;

    println!("x = {}, type of x = {}", x, type_of(&x));

    x = x + 1;
    println!("x = {}, type of x = {}", x, type_of(&x));
    

}

fn type_of<T>(_: &T) -> &str {
    std::any::type_name::<T>()
}