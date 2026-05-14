struct Excerpt<'a> {
    part: &'a str
}


fn main() {
    let first_sentence;

    {
        let novel = String::from("Call me Ishmael. Some years ago...");
        first_sentence = novel.split('.').next().expect("Could not find a '.'");

    }
    let excerpt = Excerpt {
        part: first_sentence,
    };

    

    // println!("Excerpt: {}", excerpt.part);
    println!("{}", first_sentence);
}