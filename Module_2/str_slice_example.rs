fn main() {
    let mut s1 = String::from("This is a test string with a couple of words.");
    let slice1 = &s1[10..14];  // This will be "test"
    let slice2 = &s1[15..];    // This will be "string with a couple of words."
    let slice3 = &s1[..4];     // This will be "This"

    println!("Original string: {}", s1);
    println!("Slice 1 (10..14): {}", slice1);
    println!("Slice 2 (15..): {}", slice2);
    println!("Slice 3 (..4): {}", slice3);

    let slice4 = &mut s1[5..9];  // This will be "is a"
    println!("Slice 4 (5..9): {}", slice4);
    slice4.make_ascii_uppercase();  // This will change the content of slice4, but not s1
    println!("Modified Slice 4: {}", slice4);
    println!("Original string after modifying slice4: {}", s1);

 
    let slice5 = &mut s1[0..4];  // This will be "This"

    // slice5.replace("This", "That");  // This will change the content of slice5, but not s1
    println!("Modified Slice 5: {}", slice5);
    println!("Original string after modifying slice5: {}", s1);

}