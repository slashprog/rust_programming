fn first_two_words(s: &str) -> (&str, &str) {
    let bytes = s.as_bytes();
    let mut word_start = 0;
    let mut word_end = 0;
    let mut words_found = 0;
    
    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' || i == s.len() - 1 {
            if words_found == 0 {
                // Found first word
                word_end = if i == s.len() - 1 && item != b' ' {
                    i + 1
                } else {
                    i
                };
                words_found = 1;
            } else if words_found == 1 {
                // Found second word
                let second_start = word_end + 1;
                let second_end = if i == s.len() - 1 && item != b' ' {
                    i + 1
                } else {
                    i
                };
                return (&s[0..word_end], &s[second_start..second_end]);
            }
        }
    }
    
    match words_found {
        0 => ("", ""),
        1 => (&s[0..word_end], ""),
        _ => unreachable!(),
    }
}
