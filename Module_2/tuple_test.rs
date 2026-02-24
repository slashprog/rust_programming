fn main() {
    let x = ("John", 45.6, 30); // A tuple with a string, a float, and an integer
    println!("The tuple is: {:?}", x);
    println!("The first element is: {}", x.0);
    println!("The second element is: {}", x.1);
    println!("The third element is: {}", x.2);

    let (name, score, age) = x;  // Destructuring the tuple into individual variables
    println!("Name: {}, Score: {}, Age: {}", name, score, age);

    let x = (10, 20, 30, 40);
    for v in x {
        println!("Value: {:?}", v); // This will not compile because the tuple not iterable.
    }

}