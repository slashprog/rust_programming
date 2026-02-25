fn print_length(slice: &str) {
    println!("Length is: {}", slice.len());
}

fn main() {
    let s_owned = String::from("Heap string");
    let s_lit = "Static literal";

    print_length(&s_owned); // Works! (Coerces &String to &str)
    print_length(s_lit);    // Works! (Literals are already &str)
}