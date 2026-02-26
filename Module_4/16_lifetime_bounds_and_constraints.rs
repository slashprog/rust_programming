// 'a: 'b means "a outlives b" (a lives at least as long as b)
fn longest_with_constraint<'a, 'b>(x: &'a str, y: &'b str) -> &'a str
where
    'a: 'b,  // 'a outlives 'b
{
    println!("y is: {}", y);
    x
}

// Lifetime bounds on generic types
struct Wrapper<'a, T: 'a> {
    // T must outlive 'a (or T contains references that outlive 'a)
    value: &'a T,
}

// 'static lifetime - lives entire program
fn static_lifetime() -> &'static str {
    "I live forever"  // String literals are 'static
}

// Static constraint - T contains no non-static references
fn requires_static<T: 'static>(t: T) {
    // T must not have any references with shorter lifetimes
}

fn main() {
    let s = "static str";  // 'static
    requires_static(s);     // OK
    
    let x = 5;
    requires_static(&x);    // ERROR: &x doesn't live forever
}
