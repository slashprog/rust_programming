fn find_substring(s: &str, substring: &str) -> i32 {
    match s.find(substring) {
        Some(index) => index as i32,
        None => -1,
    }
}


fn main() {
    //let s = String::from("This is a test string with a couple of words.");

    let s = "This is a test string with a couple of words.";
    let index = find_substring(&s, "test");
    println!("Index of 'test': {}", index);

    println!("s = {:?}", s);

}