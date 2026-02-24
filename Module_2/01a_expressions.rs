#[warn(unused_doc_comments)]

fn main() {
    let x = { 
        let y = 0xa;
        y + 30
    };
    println!("The value of x is: {}", x);

    let mut n = 0;
    let z = loop {
        n += 1;
        if n == 8 {
            break n * 2;
        }
    };
    println!("The value of z is: {}", z);

    let age = 30;
    let category = if age < 18 {
        "minor"
    } else if age < 65 {
        "adult"
    } else {
        "You are a senior."
       // "senior"
    };
    
    println!("You are a {}.", category);

    
    if age < 18 {
        println!("You are a minor.");
    } else if age < 65 {
        println!("You are an adult.");
    } else {
        println!("You are a senior.");
    }

// simple line comment

/// This is a doc comment. It can be used to generate documentation for this function.
/// This is another line of doc comment.
/// fsdfdsfdsfjkdsfl

/* This is a block comment. It can span multiple lines. */
/** This is a doc comment in block form. It can also span multiple lines. */

/*
    let a = if age < 18 {  
        "minor"
    };
*/

let mut c = 10;
loop {
    c -= 1;
    if c == 0 {
        break;
    }
    println!("The value of c is: {}", c);
}

}