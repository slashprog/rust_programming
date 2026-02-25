# Rust Syntax & Grammar Cheatsheet

## 1. Statements vs Expressions

```rust
// EXPRESSIONS (return a value, no semicolon)
5                              // literal expression
x + 1                          // arithmetic expression
if cond { a } else { b }       // if expression
match value { ... }            // match expression
{ let x = 5; x + 1 }           // block expression (returns 6)
loop { break 42; }             // loop expression (returns 42)

// STATEMENTS (do something, end with semicolon)
let x = 5;                     // variable binding statement
x = 10;                        // assignment statement
println!("hello");              // macro invocation statement
;                              // empty statement
```

## 2. Variable Definitions

```rust
// Basic binding (immutable by default)
let x = 5;

// Mutable variable
let mut y = 10;
y = 15;

// Type annotation
let z: i32 = 20;

// Multiple patterns
let (a, b) = (1, 2);

// Shadowing
let x = 5;
let x = x + 1;      // new variable, shadows previous

// Constants (always immutable, type required)
const MAX_POINTS: u32 = 100_000;

// Static variables (global, 'static lifetime)
static APP_NAME: &str = "MyApp";
static mut COUNTER: u32 = 0;  // unsafe to access
```

## 3. Data Types

### Scalar Types
```rust
// Integers
let a: i8 = -128;      // i8, i16, i32, i64, i128, isize
let b: u8 = 255;       // u8, u16, u32, u64, u128, usize

// Floating point
let c: f32 = 3.14;     // f32, f64

// Boolean
let d: bool = true;    // true, false

// Character (4-byte Unicode)
let e: char = '❤';
```

### Compound Types
```rust
// Array (fixed length, same type)
let arr: [i32; 3] = [1, 2, 3];
let zeros = [0; 5];    // [0, 0, 0, 0, 0]

// Tuple (fixed length, mixed types)
let tup: (i32, f64, char) = (500, 6.4, 'z');
let (x, y, z) = tup;   // destructuring
let first = tup.0;      // index access

// Slice (view into array/vector)
let slice = &arr[1..3];  // &[i32]
let str_slice: &str = "hello";  // string slice

// String (heap-allocated, growable)
let s = String::from("hello");
let s2 = "world".to_string();
```

## 4. Functions

```rust
// Basic function
fn add(x: i32, y: i32) -> i32 {
    x + y  // expression - no semicolon = return
}

// Early return
fn early_return(x: i32) -> i32 {
    if x < 0 {
        return 0;  // statement with semicolon
    }
    x * 2
}

// Generic function
fn identity<T>(x: T) -> T { x }

// Function with trait bound
fn print_debug<T: std::fmt::Debug>(x: T) {
    println!("{:?}", x);
}

// impl Trait return (existential type)
fn make_adder(x: i32) -> impl Fn(i32) -> i32 {
    move |y| x + y
}

// Function pointer type
fn apply_twice(f: fn(i32) -> i32, x: i32) -> i32 {
    f(f(x))
}

// Diverging function (never returns)
fn forever() -> ! {
    loop {}
}
```

## 5. Flow Control

### Conditional
```rust
// if expression
let result = if condition {
    value1
} else if other_condition {
    value2
} else {
    value3
};

// if let (pattern matching sugar)
if let Some(x) = optional {
    println!("Got {}", x);
}
```

### Loops
```rust
// loop (infinite)
let result = loop {
    counter += 1;
    if counter == 10 {
        break counter * 2;  // break with value
    }
};

// while
while n < 10 {
    n += 1;
}

// for (range)
for i in 0..5 {          // 0,1,2,3,4 (exclusive)
    println!("{}", i);
}
for i in 0..=5 {         // 0,1,2,3,4,5 (inclusive)
    println!("{}", i);
}

// for (collection)
for item in collection.iter() { ... }
for item in &collection { ... }          // same as iter()
for mut item in &mut collection { ... }  // mutable ref

// for with index
for (index, value) in collection.iter().enumerate() {
    println!("{}: {}", index, value);
}

// Loop labels
'outer: for i in 0..5 {
    'inner: for j in 0..5 {
        if i == 2 && j == 2 {
            break 'outer;  // break outer loop
        }
    }
}
```

### Pattern Matching
```rust
// Basic match
match value {
    1 => println!("one"),
    2 | 3 => println!("two or three"),
    4..=10 => println!("four through ten"),
    _ => println!("something else"),
}

// Match with destructuring
match optional {
    Some(x) if x > 5 => println!("Big: {}", x),
    Some(x) => println!("Small: {}", x),
    None => println!("Nothing"),
}

// Match enums
match coin {
    Coin::Penny => 1,
    Coin::Nickel => 5,
    Coin::Dime(state) => {
        println!("From: {}", state);
        25
    }
}
```

## 6. Operators

### Arithmetic
```rust
+   // Addition
-   // Subtraction
*   // Multiplication
/   // Division
%   // Remainder
```

### Comparison
```rust
==  // Equal
!=  // Not equal
<   // Less than
>   // Greater than
<=  // Less than or equal
>=  // Greater than or equal
```

### Logical
```rust
&&  // Logical AND (short-circuiting)
||  // Logical OR (short-circuiting)
!   // Logical NOT
```

### Bitwise
```rust
&   // Bitwise AND
|   // Bitwise OR
^   // Bitwise XOR
<<  // Left shift
>>  // Right shift
!   // Bitwise NOT (unary)
```

### Assignment
```rust
=   // Assign
+=  // Add assign
-=  // Subtract assign
*=  // Multiply assign
/=  // Divide assign
%=  // Remainder assign
&=  // Bitwise AND assign
|=  // Bitwise OR assign
^=  // Bitwise XOR assign
<<= // Left shift assign
>>= // Right shift assign
```

### Compound/Other
```rust
&   // Borrow (reference)
&mut  // Mutable borrow
*   // Dereference
.   // Field access/method call
::  // Path separator (module/item access)
->  // Function return type
=>  // Match arm separator
?   // Error propagation
..  // Range exclusive (start..end)
..= // Range inclusive (start..=end)
... // Deprecated, use ..=
..  // Struct update syntax (Struct { ..other })
_   // Pattern placeholder, ignored value
```

### Operator Overridable Traits
```rust
std::ops::Add        // +
std::ops::Sub        // -
std::ops::Mul        // *
std::ops::Div        // /
std::ops::Rem        // %
std::ops::Neg        // - (unary)
std::ops::Not        // ! (unary)
std::ops::BitAnd     // &
std::ops::BitOr      // |
std::ops::BitXor     // ^
std::ops::Shl        // <<
std::ops::Shr        // >>
std::ops::Index      // []
std::ops::Deref      // *
std::ops::Fn         // () call
```

## 7. Type Definitions

### Structs
```rust
// Tuple struct
struct Point(i32, i32);

// Named struct
struct Person {
    name: String,
    age: u8,
}

// Unit struct (no fields)
struct Marker;

// Methods
impl Person {
    // Associated function (static)
    fn new(name: String, age: u8) -> Self {
        Person { name, age }
    }
    
    // Method (self reference)
    fn greet(&self) {
        println!("Hi, I'm {}", self.name);
    }
    
    // Mutable method
    fn have_birthday(&mut self) {
        self.age += 1;
    }
    
    // Consuming method
    fn die(self) {
        println!("{} has passed away", self.name);
    }
}
```

### Enums
```rust
// Simple enum
enum Color {
    Red,
    Green,
    Blue,
}

// Enum with data
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),
}

// Option enum (built-in)
enum Option<T> {
    Some(T),
    None,
}

// Result enum (built-in)
enum Result<T, E> {
    Ok(T),
    Err(E),
}
```

### Type Aliases
```rust
type Kilometers = i32;
type Thunk = Box<dyn Fn() + Send + 'static>;
```

## 8. Traits

```rust
// Define trait
trait Animal {
    fn name(&self) -> &str;
    fn speak(&self) {
        println!("{} makes a sound", self.name());  // default impl
    }
}

// Implement trait
struct Dog { name: String }

impl Animal for Dog {
    fn name(&self) -> &str {
        &self.name
    }
    // override default
    fn speak(&self) {
        println!("{} says woof!", self.name());
    }
}

// Trait bounds
fn print_name<T: Animal>(animal: T) {
    println!("{}", animal.name());
}

// where clause (for complex bounds)
fn complex<T, U>(t: T, u: U) 
where
    T: Animal + std::fmt::Debug,
    U: Clone + std::fmt::Display,
{
    // ...
}

// Trait objects
let animals: Vec<Box<dyn Animal>> = vec![
    Box::new(Dog { name: "Rufus".to_string() }),
];
```

## 9. Common Built-in Functions/Macros

### Printing
```rust
println!("Hello");                    // with newline
print!("Hello");                      // without newline
eprintln!("Error");                   // stderr
eprint!("Error");                      // stderr without newline

// Formatting
println!("{}", 42);                    // Display
println!("{:?}", vec![1, 2, 3]);       // Debug
println!("{:#?}", vec![1, 2, 3]);      // Pretty Debug
println!("{:p}", &x);                   // Pointer
println!("{:b}", 10);                   // Binary
println!("{:x}", 255);                   // Hex lowercase
println!("{:X}", 255);                   // Hex uppercase

// Positional arguments
println!("{0} {1} {0}", "a", "b");      // "a b a"

// Named arguments
println!("{name} is {age}", name="Bob", age=20);
```

### Collections
```rust
// Vectors
let v = vec![1, 2, 3];
v.push(4);
v.pop();
v.len();
v.is_empty();
v.contains(&2);
v.first();          // Option<&T>
v.last();           // Option<&T>
v.get(2);           // Option<&T>
v.iter();           // Iterator
v.sort();
v.sort_by(|a, b| b.cmp(a));
v.dedup();          // Remove consecutive duplicates

// Strings
let s = String::from("hello");
s.push('!');
s.push_str(" world");
s.len();
s.is_empty();
s.contains("hello");
s.replace("hello", "hi");
s.split_whitespace();
s.trim();
s.to_uppercase();
s.to_lowercase();

// HashMap
use std::collections::HashMap;
let mut map = HashMap::new();
map.insert("key", "value");
map.get("key");          // Option<&V>
map.entry("key").or_insert("default");
map.remove("key");
map.contains_key("key");
```

### Option & Result
```rust
// Option methods
opt.is_some()
opt.is_none()
opt.unwrap()            // panics if None
opt.unwrap_or(default)
opt.unwrap_or_else(|| compute())
opt.map(|x| x * 2)
opt.and_then(|x| Some(x * 2))
opt.filter(|x| x > 5)
opt.take()              // Option<T>
opt.replace(value)      // Option<T>

// Result methods
res.is_ok()
res.is_err()
res.unwrap()            // panics if Err
res.unwrap_err()        // panics if Ok
res.expect("msg")
res.ok()                // Option<T>
res.err()               // Option<E>
res.map(|x| x * 2)
res.map_err(|e| e.to_string())
res.and_then(|x| Ok(x * 2))
res.or_else(|e| Err(e))
```

### Iterator Methods
```rust
let v = vec![1, 2, 3, 4, 5];

v.iter().map(|x| x * 2)
v.iter().filter(|x| *x % 2 == 0)
v.iter().fold(0, |acc, x| acc + x)
v.iter().sum::<i32>()
v.iter().product::<i32>()
v.iter().min()
v.iter().max()
v.iter().any(|x| x > 3)
v.iter().all(|x| x > 0)
v.iter().find(|x| x == 3)
v.iter().position(|x| x == 3)
v.iter().take(3)
v.iter().skip(2)
v.iter().step_by(2)
v.iter().chain(other.iter())
v.iter().zip(other.iter())
v.iter().enumerate()
v.iter().collect::<Vec<_>>()
```

### Type Conversion
```rust
// From/Into
let s = String::from("hello");
let s: String = "hello".into();

// Parse
let n: i32 = "42".parse().unwrap();
let n = "42".parse::<i32>().unwrap();

// To/from strings
42.to_string()
format!("{}", 42)

// As conversion (for primitive types)
let x = 5_i32;
let y = x as i64;
```

### Memory/Size
```rust
std::mem::size_of::<i32>()           // 4
std::mem::size_of_val(&x)
std::mem::drop(x)                     // Explicitly drop
std::mem::swap(&mut a, &mut b)
std::mem::replace(&mut x, new_value)
std::mem::take(&mut x)                 // Default::default()
std::mem::transmute::<T, U>(x)         // Unsafe bitcast
```

### Concurrency
```rust
// Threads
thread::spawn(move || { ... })
thread::sleep(Duration::from_millis(100))

// Synchronization
Mutex::new(data)
Arc::new(data)                         // Atomic reference counting
RwLock::new(data)
Condvar::new()
Barrier::new(n)

// Atomics
AtomicBool::new(true)
AtomicI32::new(42)
AtomicPtr::new(&mut data)
```

### Other Useful Macros
```rust
// Compile-time
file!()                    // Current file
line!()                    // Current line
column!()                  // Current column
module_path!()             // Current module path

// Debug
dbg!(x)                    // Print debug and return value
unimplemented!()            // Panic with "not implemented"
todo!()                     // Panic with "todo"
unreachable!()              // Panic if code is reached

// Testing
assert!(condition)
assert_eq!(a, b)
assert_ne!(a, b)
debug_assert!(condition)    // Only in debug builds
```

## 10. Module System

```rust
// Module declaration
mod my_module;
mod my_module {
    // nested module
    pub fn public_function() {}
    fn private_function() {}
    
    pub mod nested {
        pub fn nested_function() {}
    }
}

// Imports
use std::collections::HashMap;
use std::io::{self, Write};  // self = io module
use std::fmt::*;              // glob import

// Re-exports
pub use self::types::MyType;

// Paths
crate::module::function()      // Absolute path
self::module::function()       // Relative path (current module)
super::function()              // Parent module
::external_crate::function()   // External crate
```

## 11. Attributes

```rust
// Crate-level
#![crate_name = "mycrate"]
#![crate_type = "lib"]
#![deny(warnings)]
#![allow(dead_code)]

// Item-level
#[test]
fn test_function() {}

#[cfg(target_os = "linux")]
fn linux_only() {}

#[derive(Debug, Clone, PartialEq)]
struct MyStruct {}

#[inline]
fn small_function() {}

#[repr(C)]
#[repr(align(16))]
struct Aligned {
    data: [u8; 16],
}

#[must_use]
fn important_result() -> Result<(), Error> {}
```

## 12. Common Patterns

### Builder Pattern
```rust
#[derive(Default)]
struct RequestBuilder {
    url: Option<String>,
    method: Option<String>,
}

impl RequestBuilder {
    fn url(mut self, url: impl Into<String>) -> Self {
        self.url = Some(url.into());
        self
    }
    
    fn method(mut self, method: impl Into<String>) -> Self {
        self.method = Some(method.into());
        self
    }
    
    fn build(self) -> Result<Request, Error> {
        Ok(Request {
            url: self.url.ok_or("Missing URL")?,
            method: self.method.unwrap_or_else(|| "GET".into()),
        })
    }
}
```

### Newtype Pattern
```rust
struct Meters(f64);
struct Seconds(f64);

fn speed(distance: Meters, time: Seconds) -> f64 {
    distance.0 / time.0
}
```

### RAII Guards
```rust
struct MyMutex<T> {
    data: T,
}

impl<T> MyMutex<T> {
    fn lock(&self) -> MyGuard<T> {
        MyGuard { data: &self.data }
    }
}

struct MyGuard<'a, T> {
    data: &'a T,
}

impl<'a, T> Drop for MyGuard<'a, T> {
    fn drop(&mut self) {
        println!("Unlocking");
    }
}
```

This cheatsheet covers the essential Rust syntax and grammar. For more details, refer to [The Rust Reference](https://doc.rust-lang.org/reference/) or [The Rust Book](https://doc.rust-lang.org/book/).