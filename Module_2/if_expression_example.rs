fn main() {
    let a = 10;

    if a > 5 { 
        println!("a is greater than 5");
    }

    let x = if a < 0 {
        "negative"
    } else if a == 0 {
        "zero"
    } else {
        "positive"
    };

    println!("a is {}", x);
    
}