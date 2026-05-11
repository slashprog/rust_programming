fn main() {
    print!("Hello, world!"); // print! does not add a newline at the end, writes to standard output
    println!("Another line");
    
    /* fprintf(stderr, "This is an error message"); */
    eprintln!("This is an error message");
    eprint!("This is an error message without a newline");

}