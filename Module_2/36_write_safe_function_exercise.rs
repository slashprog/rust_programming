// TASK: Write a function that returns the first and second words
// from a string, handling edge cases properly

fn first_two_words(s: &str) -> (&str, &str) {
    // TODO: Implement this function
    // - Return ("", "") for empty string
    // - Return (first, "") for string with one word
    // - Return (first, second) for string with two+ words
}

#[test]
fn test_first_two_words() {
    assert_eq!(first_two_words(""), ("", ""));
    assert_eq!(first_two_words("hello"), ("hello", ""));
    assert_eq!(first_two_words("hello world"), ("hello", "world"));
    assert_eq!(first_two_words("hello world rust"), ("hello", "world"));
}

// BONUS: Make it work with both String and &str
