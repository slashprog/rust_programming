# Rust String Operations & Methods - Complete Reference

## Table of Contents
1. [Creating Strings](#1-creating-strings)
2. [Inspecting Strings](#2-inspecting-strings)
3. [Modifying Strings](#3-modifying-strings)
4. [Concatenation & Formatting](#4-concatenation--formatting)
5. [Slicing & Extraction](#5-slicing--extraction)
6. [Searching & Matching](#6-searching--matching)
7. [Transformation & Conversion](#7-transformation--conversion)
8. [Splitting & Trimming](#8-splitting--trimming)
9. [Case Conversion](#9-case-conversion)
10. [Validation & Parsing](#10-validation--parsing)
11. [Iteration & Character Operations](#11-iteration--character-operations)
12. [Memory & Capacity Management](#12-memory--capacity-management)
13. [String vs &str Conversions](#13-string-vs-str-conversions)
14. [Advanced/Unicode Operations](#14-advancedunicode-operations)

---

## 1. Creating Strings

```rust
// From string literal
let s1 = String::from("hello");
let s2 = "hello".to_string();
let s3 = "hello".to_owned();

// Empty string
let empty = String::new();

// From various types
let from_char = 'a'.to_string();
let from_int = 42.to_string();
let from_bool = true.to_string();
let from_vec = String::from_utf8(vec![104, 101, 108, 108, 111]).unwrap();

// With capacity pre-allocation
let with_capacity = String::with_capacity(100);

// Repeat a string
let repeated = "ha".repeat(3);  // "hahaha"

// From UTF-8 lossy (replaces invalid chars with �)
let bytes = vec![240, 159, 146, 150];  // Valid UTF-8 for '💖'
let from_utf8_lossy = String::from_utf8_lossy(&bytes);  // "💖"

// From iterator
let chars = ['h', 'e', 'l', 'l', 'o'];
let from_iter: String = chars.iter().collect();  // "hello"
```

---

## 2. Inspecting Strings

```rust
let s = String::from("Hello, 世界!");

// Length (bytes, not characters!)
println!("Length in bytes: {}", s.len());  // 13 (5 ASCII + 3 for 世界 + 1 for !)

// Character count
println!("Character count: {}", s.chars().count());  // 9

// Check if empty
println!("Is empty: {}", s.is_empty());  // false

// Capacity (total allocated memory)
println!("Capacity: {}", s.capacity());

// Check if contains only ASCII
println!("Is ASCII: {}", s.is_ascii());  // false

// Get individual bytes
let bytes = s.as_bytes();  // &[u8]

// Get as raw pointer (unsafe)
let ptr = s.as_ptr();

// Check starts/ends with
println!("Starts with 'Hello': {}", s.starts_with("Hello"));  // true
println!("Ends with '!': {}", s.ends_with('!'));  // true

// Check contains
println!("Contains '世界': {}", s.contains("世界"));  // true
println!("Contains 'world': {}", s.contains("world"));  // false

// Find character/string
println!("Position of ',': {}", s.find(',').unwrap());  // 5
println!("Position of '世界': {}", s.find("世界").unwrap());  // 7
```

---

## 3. Modifying Strings

```rust
let mut s = String::from("hello");

// Push single character
s.push('!');  // "hello!"

// Push string slice
s.push_str(" world");  // "hello! world"

// Insert character at index
s.insert(5, ',');  // "hello,! world"

// Insert string at index
s.insert_str(6, " beautiful");  // "hello, beautiful! world"

// Replace (all occurrences)
let replaced = s.replace("world", "Rust");  // "hello, beautiful! Rust"

// Replace range (nth occurrence)
let replaced_n = s.replacen("l", "L", 2);  // "heLLo, beautiful! world"

// Remove last character
s.pop();  // Returns Some('d'), s now "hello, beautiful! worl"

// Remove at index
let removed = s.remove(5);  // Returns ',', s now "hello beautiful! worl"

// Truncate to specific length (in bytes, not chars!)
let mut s2 = String::from("Hello 世界");
s2.truncate(7);  // "Hello �" (careful with UTF-8!)
println!("Truncated: {}", s2);  // "Hello "

// Clear the string
s.clear();  // ""

// Retain characters matching predicate
let mut s3 = String::from("Hello 123 World 456");
s3.retain(|c| !c.is_ascii_digit());  // "Hello  World "
```

---

## 4. Concatenation & Formatting

```rust
let s1 = String::from("Hello");
let s2 = String::from("World");

// Using + operator (takes ownership of s1, borrows s2)
let s3 = s1 + " " + &s2;  // "Hello World"
// println!("{}", s1);  // ERROR: s1 moved!

// Using format! macro (doesn't take ownership)
let s4 = format!("{} {}", "Hello", "World");  // "Hello World"
let s5 = format!("{}-{}-{}", 1, 2, 3);  // "1-2-3"

// Named arguments
let s6 = format!("{name} is {age}", name="Alice", age=30);  // "Alice is 30"

// Formatting numbers
let pi = 3.14159;
let s7 = format!("{:.2}", pi);  // "3.14"
let s8 = format!("{:08}", 42);  // "00000042"
let s9 = format!("{:#x}", 255);  // "0xff"
let s10 = format!("{:b}", 10);   // "1010"

// Join collection
let words = vec!["Hello", "Rust", "World"];
let joined = words.join(" ");  // "Hello Rust World"

// Concatenate using + (multiple)
let hello = "Hello".to_string();
let result = hello + " " + "Rust" + " " + "World";
```

---

## 5. Slicing & Extraction

```rust
let s = String::from("Hello, 世界!");

// Get substring (range syntax - careful with UTF-8!)
let slice1 = &s[0..5];  // "Hello" (bytes 0-4)
let slice2 = &s[7..10]; // "世界" (bytes 7-9)

// Using get() - safe version that returns Option
let safe_slice = s.get(0..5);  // Some("Hello")
let invalid = s.get(5..8);     // None (would split a char)

// Get single character (as Option<char>)
let ch = s.chars().nth(7);  // Some('世')

// Extract matching patterns
let extracted = s.matches(',').next();  // Some(",")

// Get lines
let multiline = "line1\nline2\r\nline3";
let lines: Vec<&str> = multiline.lines().collect();  // ["line1", "line2", "line3"]

// Get first/last character
let first_char = s.chars().next();  // Some('H')
let last_char = s.chars().last();   // Some('!')

// Get n characters from start/end
let first_5: String = s.chars().take(5).collect();  // "Hello"
let last_2: String = s.chars().rev().take(2).collect::<String>().chars().rev().collect();
```

---

## 6. Searching & Matching

```rust
let s = String::from("The quick brown fox jumps over the lazy dog");

// Find position
let pos1 = s.find("fox");  // Some(16)
let pos2 = s.rfind("the"); // Some(31) (last occurrence)
let pos3 = s.find('z');    // Some(38)

// Check existence
let has_fox = s.contains("fox");  // true

// Find with pattern matching
let starts_with_the = s.starts_with("The");  // true
let ends_with_dog = s.ends_with("dog");      // true

// Match indices (returns iterator of matches)
let matches: Vec<&str> = s.matches("o").collect();  // ["o", "o", "o"]
let match_indices: Vec<(usize, &str)> = s.match_indices("o").collect();
// [(15, "o"), (18, "o"), (36, "o")]

// Find byte position (faster, but may split UTF-8)
let byte_pos = s.as_bytes().iter().position(|&b| b == b'x');  // Some(20)

// Find character satisfying predicate
let first_digit = s.find(|c: char| c.is_ascii_digit());  // None

// Check if all characters satisfy predicate
let all_alpha = s.chars().all(|c| c.is_alphabetic());  // false
let any_whitespace = s.chars().any(|c| c.is_whitespace());  // true
```

---

## 7. Transformation & Conversion

```rust
let s = String::from("hello world");

// Replace (all occurrences)
let replaced = s.replace("world", "Rust");  // "hello Rust"

// Replace with callback
let replaced_with = s.replace("world", |_| "Rust");  // Not directly available

// Replace range (nth occurrence)
let replaced_n = s.replacen("o", "0", 2);  // "hell0 w0rld"

// Strip prefix/suffix
let stripped = s.strip_prefix("hello ").unwrap();  // "world"
let stripped_suffix = s.strip_suffix(" world").unwrap();  // "hello"

// Escape/Unescape
let special = "Hello\n\tWorld";
let escaped = special.escape_default().to_string();  // "Hello\\n\\tWorld"
let debug_escaped = format!("{:?}", special);  // "\"Hello\\n\\tWorld\""

// Convert to/from bytes
let bytes = s.into_bytes();  // Vec<u8>
let from_bytes = String::from_utf8(bytes).unwrap();

// Convert to/from chars
let chars: Vec<char> = s.chars().collect();
let from_chars: String = chars.into_iter().collect();

// Repeat
let repeated = "ab".repeat(3);  // "ababab"

// Reverse (careful with UTF-8!)
let reversed: String = s.chars().rev().collect();  // "dlrow olleh"
```

---

## 8. Splitting & Trimming

```rust
let s = String::from("  Hello, World! How are you?  ");

// Trim whitespace (both ends)
let trimmed = s.trim();  // "Hello, World! How are you?"

// Trim specific characters
let trimmed_chars = s.trim_matches(' ');  // same as trim()

// Trim start/end only
let trimmed_start = s.trim_start();  // "Hello, World! How are you?  "
let trimmed_end = s.trim_end();      // "  Hello, World! How are you?"

// Split on whitespace
let words: Vec<&str> = s.split_whitespace().collect();  
// ["Hello,", "World!", "How", "are", "you?"]

// Split on pattern
let parts: Vec<&str> = s.split(',').collect();  // ["  Hello", " World! How are you?  "]

// Split at most n times
let parts_n: Vec<&str> = s.splitn(3, ' ').collect();  
// ["", "", "Hello, World! How are you?  "]

// Split including pattern
let parts_include: Vec<&str> = s.split_inclusive(' ').collect();

// Split into lines
let multiline = "line1\nline2\nline3";
let lines: Vec<&str> = multiline.lines().collect();

// Split on string pattern
let by_word: Vec<&str> = s.split("World").collect();  // ["  Hello, ", "! How are you?  "]

// Split at index
let (left, right) = s.split_at(10);  // Panics if not at char boundary!
let (left, right) = s.split_at(s.find(',').unwrap());  // Safe way
```

---

## 9. Case Conversion

```rust
let s = String::from("Hello, World! 123");

// Uppercase/Lowercase
let upper = s.to_uppercase();   // "HELLO, WORLD! 123"
let lower = s.to_lowercase();   // "hello, world! 123"

// Title case (capitalize first letter of each word)
let title: String = s
    .split_whitespace()
    .map(|word| {
        let mut chars = word.chars();
        match chars.next() {
            None => String::new(),
            Some(first) => first.to_uppercase().collect::<String>() + chars.as_str(),
        }
    })
    .collect::<Vec<_>>()
    .join(" ");
// "Hello, World! 123"

// Convert case with Unicode awareness
let german = "Straße";
println!("{}", german.to_uppercase());  // "STRASSE"
println!("{}", german.to_lowercase());  // "straße"

// Check case
let all_upper = s.chars().all(|c| c.is_uppercase() || !c.is_alphabetic());  // false
let all_lower = s.chars().all(|c| c.is_lowercase() || !c.is_alphabetic());  // false
```

---

## 10. Validation & Parsing

```rust
// Parse to numbers
let num = "42".parse::<i32>().unwrap();
let num: i32 = "42".parse().unwrap();
let float = "3.14".parse::<f64>().unwrap();

// Parse with error handling
match "abc".parse::<i32>() {
    Ok(n) => println!("Number: {}", n),
    Err(e) => println!("Not a number: {}", e),
}

// Check if string is numeric
let is_number = s.chars().all(|c| c.is_ascii_digit());

// Check character categories
let has_alpha = s.chars().any(|c| c.is_alphabetic());
let has_digit = s.chars().any(|c| c.is_ascii_digit());
let has_whitespace = s.chars().any(|c| c.is_whitespace());
let is_uppercase = s.chars().all(|c| c.is_uppercase() || !c.is_alphabetic());

// Validate UTF-8
let bytes = vec![0, 159, 146, 150];  // Invalid UTF-8
let valid = String::from_utf8(bytes).is_err();

// Email-like validation
fn is_valid_email(email: &str) -> bool {
    email.contains('@') && email.contains('.')
}

// Check string length (bytes vs chars)
fn is_valid_utf8(s: &str) -> bool {
    std::str::from_utf8(s.as_bytes()).is_ok()
}
```

---

## 11. Iteration & Character Operations

```rust
let s = String::from("Hello 世界");

// Iterate over characters (Unicode safe)
for c in s.chars() {
    println!("Char: {}", c);
}

// Iterate over characters with indices
for (i, c) in s.char_indices() {
    println!("Position {}: '{}'", i, c);
}

// Iterate over bytes (raw)
for b in s.bytes() {
    println!("Byte: {}", b);
}

// Iterate over lines
let multiline = "line1\nline2\nline3";
for line in multiline.lines() {
    println!("Line: {}", line);
}

// Iterate over words
for word in s.split_whitespace() {
    println!("Word: {}", word);
}

// Map over characters
let doubled: String = s.chars().map(|c| {
    if c.is_alphabetic() { (c as u8 + 1) as char } else { c }
}).collect();

// Filter characters
let only_ascii: String = s.chars().filter(|c| c.is_ascii()).collect();

// Enumerate characters
let enumerated: Vec<(usize, char)> = s.chars().enumerate().collect();
```

---

## 12. Memory & Capacity Management

```rust
let mut s = String::with_capacity(100);
println!("Capacity: {}", s.capacity());  // 100
println!("Length: {}", s.len());         // 0

// Add content
s.push_str("Hello");
println!("Capacity: {}", s.capacity());  // 100 (still)
println!("Length: {}", s.len());         // 5

// Reserve additional capacity
s.reserve(50);  // Ensure at least 150 total capacity

// Reserve exact capacity
s.reserve_exact(200);  // Try to get exactly 200 total

// Shrink to fit (reduce capacity to match length)
s.shrink_to_fit();
println!("Capacity after shrink: {}", s.capacity());  // 5 (or slightly more)

// Shrink to a limit
s.shrink_to(10);  // Shrink to at least 10 capacity

// Get current memory stats
println!("Size of String: {} bytes", std::mem::size_of_val(&s));  // Stack size (24 bytes)
println!("Heap allocation: {} bytes", s.capacity());

// Convert to boxed str (saves space if not modifying)
let boxed_str: Box<str> = s.into_boxed_str();

// From boxed str back to String
let s2: String = boxed_str.into_string();
```

---

## 13. String vs &str Conversions

```rust
// &str → String (allocation)
let str_slice: &str = "hello";
let string1: String = str_slice.to_string();
let string2: String = str_slice.to_owned();
let string3: String = String::from(str_slice);
let string4: String = str_slice.into();  // With type annotation

// String → &str (borrow, no allocation)
let string = String::from("hello");
let slice1: &str = &string;
let slice2: &str = string.as_str();
let slice3: &str = &string[..];

// Part of String → &str
let part: &str = &string[0..2];  // "he"

// String → &mut str (rare)
let mut_str: &mut str = &mut string[..];

// Box<str> conversions
let boxed: Box<str> = "hello".into();  // &str → Box<str>
let string: String = boxed.into();      // Box<str> → String

// Rc<str> for shared immutable strings
use std::rc::Rc;
let rc_str: Rc<str> = Rc::from("hello");
let rc_clone = rc_str.clone();  // Shares data, no copy

// Cow (clone on write) for flexible borrowing/owning
use std::borrow::Cow;
fn process(input: Cow<str>) -> Cow<str> {
    if input.contains('!') {
        // Needs modification, so own it
        Cow::Owned(input.replace('!', "?"))
    } else {
        // No modification, keep borrowed
        input
    }
}
```

---

## 14. Advanced/Unicode Operations

```rust
use unicode_segmentation::UnicodeSegmentation;  // Add to Cargo.toml

let s = String::from("नमस्ते");  // Hindi "namaste"

// Grapheme clusters (what users perceive as characters)
let graphemes: Vec<&str> = s.graphemes(true).collect();
println!("Graphemes: {:?}", graphemes);  // ["न", "म", "स्", "ते"]

// Unicode normalization
use unicode_normalization::UnicodeNormalization;  // Add to Cargo.toml

let nfd: String = s.nfd().collect();  // Normalization Form D
let nfc: String = s.nfc().collect();  // Normalization Form C

// Character width (for terminal display)
use unicode_width::UnicodeWidthStr;  // Add to Cargo.toml

let width = s.width();  // Display width in terminal

// Unicode properties
for c in s.chars() {
    println!("Char: '{}'", c);
    println!("  Category: {:?}", c.unicode_general_category());  // needs unicode-general-category
    println!("  Is alphabetic: {}", c.is_alphabetic());
    println!("  Is alphanumeric: {}", c.is_alphanumeric());
    println!("  Script: {:?}", c.unicode_script());  // needs unicode-script
}

// Bidirectional text
use unicode_bidi::{BidiInfo, Level};  // Add to Cargo.toml

let bidi_info = BidiInfo::new(&s, None);
for paragraph in bidi_info.paragraphs {
    println!("Paragraph level: {:?}", paragraph.level);
}

// Text segmentation (words, sentences)
use unicode_segmentation::UnicodeSegmentation;

let words: Vec<&str> = s.unicode_words().collect();
let sentences: Vec<&str> = s.split_sentence_bounds().collect();

// Unicode case folding (for case-insensitive comparison)
use unicode_normalization::UnicodeNormalization;

let s1 = "Straße";
let s2 = "STRASSE";
let fold1: String = s1.to_lowercase().nfkc().collect();
let fold2: String = s2.to_lowercase().nfkc().collect();
println!("Case-folded equal: {}", fold1 == fold2);  // true
```

---

## Quick Reference Table

| Operation | Method | Example |
|-----------|--------|---------|
| Create | `String::from()`, `to_string()` | `"hello".to_string()` |
| Length (bytes) | `.len()` | `s.len()` |
| Length (chars) | `.chars().count()` | `s.chars().count()` |
| Empty check | `.is_empty()` | `s.is_empty()` |
| Append char | `.push()` | `s.push('!')` |
| Append string | `.push_str()` | `s.push_str("world")` |
| Insert | `.insert()`, `.insert_str()` | `s.insert(5, ',')` |
| Replace | `.replace()`, `.replacen()` | `s.replace("old", "new")` |
| Remove | `.pop()`, `.remove()` | `s.pop()` |
| Clear | `.clear()` | `s.clear()` |
| Trim | `.trim()`, `.trim_start()` | `s.trim()` |
| Split | `.split()`, `.split_whitespace()` | `s.split(',')` |
| Contains | `.contains()` | `s.contains("hello")` |
| Find | `.find()`, `.rfind()` | `s.find('x')` |
| Starts/Ends | `.starts_with()`, `.ends_with()` | `s.starts_with("h")` |
| Case convert | `.to_uppercase()`, `.to_lowercase()` | `s.to_uppercase()` |
| Parse | `.parse::<T>()` | `"42".parse::<i32>()` |
| Format | `format!()` | `format!("{}-{}", a, b)` |
| Join | `.join()` | `vec!["a","b"].join(",")` |
| Repeat | `.repeat()` | `"ha".repeat(3)` |
| Slice | `&s[..]` | `&s[0..5]` |
| Convert to bytes | `.into_bytes()` | `s.into_bytes()` |
| Convert from bytes | `String::from_utf8()` | `String::from_utf8(vec![104])` |

Remember: **Rust strings are UTF-8 encoded** and **indexing is by byte, not character**. Always use `.chars().nth()` for character access when Unicode safety is needed!