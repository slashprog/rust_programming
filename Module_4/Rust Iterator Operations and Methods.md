# Rust Iterator Operations & Methods - Complete Reference

## Table of Contents
1. [Creating Iterators](#1-creating-iterators)
2. [Basic Consumption](#2-basic-consumption)
3. [Transformations (Mapping)](#3-transformations-mapping)
4. [Filtering](#4-filtering)
5. [Combining Iterators](#5-combining-iterators)
6. [Reducing & Folding](#6-reducing--folding)
7. [Searching & Finding](#7-searching--finding)
8. [Skipping & Taking](#8-skipping--taking)
9. [Loops & Side Effects](#9-loops--side-effects)
10. [Collection Operations](#10-collection-operations)
11. [Numeric Operations](#11-numeric-operations)
12. [Conditional Operations](#12-conditional-operations)
13. [Position & Indexing](#13-position--indexing)
14. [Flattening & Nested Iteration](#14-flattening--nested-iteration)
15. [Peekable & Advance Control](#15-peekable--advance-control)
16. [Custom Iterators](#16-custom-iterators)
17. [Performance & Optimization](#17-performance--optimization)

---

## 1. Creating Iterators

```rust
use std::collections::{HashMap, HashSet};

fn main() {
    // From collections
    let vec = vec![1, 2, 3, 4, 5];
    let iter = vec.iter();                    // &T
    let iter_mut = vec.iter_mut();            // &mut T
    let into_iter = vec.into_iter();          // T (consumes vec)
    
    // From arrays
    let arr = [1, 2, 3, 4, 5];
    let arr_iter = arr.iter();                 // &T
    let arr_into_iter = arr.into_iter();       // T (copy for Copy types)
    
    // From ranges
    let range = 0..5;                          // 0,1,2,3,4
    let range_inclusive = 0..=5;                // 0,1,2,3,4,5
    
    // From Option and Result
    let opt = Some(42);
    let opt_iter = opt.iter();                  // 0 or 1 element
    
    let res: Result<i32, &str> = Ok(42);
    let res_iter = res.iter();                  // 0 or 1 element
    
    // From HashMap
    let mut map = HashMap::new();
    map.insert("a", 1);
    map.insert("b", 2);
    
    for (key, value) in map.iter() {            // (&str, &i32)
        println!("{}: {}", key, value);
    }
    
    for key in map.keys() {                      // &str
        println!("Key: {}", key);
    }
    
    for value in map.values() {                  // &i32
        println!("Value: {}", value);
    }
    
    for value in map.values_mut() {              // &mut i32
        *value *= 2;
    }
    
    // From HashSet
    let set: HashSet<i32> = [1, 2, 3].iter().cloned().collect();
    for item in set.iter() {                     // &i32
        println!("{}", item);
    }
    
    // From strings
    let s = "hello";
    let chars = s.chars();                       // Chars iterator
    let bytes = s.bytes();                       // Bytes iterator
    let lines = s.lines();                        // Lines iterator
    
    // Generate iterators
    let repeated = std::iter::repeat(5);          // Infinite 5s
    let once = std::iter::once(42);               // Single value
    let empty: std::iter::Empty<i32> = std::iter::empty();  // Empty
    
    // Successive values (successor function)
    let successors = std::iter::successors(Some(0), |&x| {
        if x < 5 { Some(x + 1) } else { None }
    });  // 0,1,2,3,4,5
    
    // From_fn (custom generator)
    let mut count = 0;
    let from_fn = std::iter::from_fn(move || {
        if count < 5 {
            count += 1;
            Some(count)
        } else {
            None
        }
    });
    
    // From individual items
    let chain_iter = (0..3).chain(std::iter::once(42));
}
```

---

## 2. Basic Consumption

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Collect (most common)
    let collected: Vec<i32> = numbers.iter().map(|&x| x * 2).collect();
    let collected_to_set: HashSet<i32> = numbers.iter().cloned().collect();
    
    // For loop (consumes iterator)
    for item in numbers.iter() {
        println!("{}", item);
    }
    
    // Count elements
    let count = numbers.iter().count();  // 5
    
    // Last element
    let last = numbers.iter().last();    // Some(5)
    
    // Nth element (zero-based, consumes up to nth)
    let third = numbers.iter().nth(2);   // Some(3)
    
    // Check if iterator is empty
    let is_empty = numbers.iter().next().is_none();  // false
    
    // Manual iteration
    let mut iter = numbers.iter();
    while let Some(item) = iter.next() {
        println!("{}", item);
    }
    
    // For_each (consumes iterator)
    numbers.iter().for_each(|&x| println!("{}", x));
    
    // Reduce to single value (Option)
    let sum = numbers.iter().fold(0, |acc, &x| acc + x);
    
    // Check if contains
    let has_three = numbers.iter().any(|&x| x == 3);  // true
    
    // Get min/max
    let min = numbers.iter().min();  // Some(1)
    let max = numbers.iter().max();  // Some(5)
}
```

---

## 3. Transformations (Mapping)

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Map (transform each element)
    let doubled: Vec<i32> = numbers.iter().map(|&x| x * 2).collect();
    // [2, 4, 6, 8, 10]
    
    // Map with index (enumerate + map)
    let with_index: Vec<(usize, i32)> = numbers
        .iter()
        .enumerate()
        .map(|(i, &x)| (i, x * 2))
        .collect();
    
    // Map while (takes while Some)
    let mapped_while: Vec<i32> = numbers
        .iter()
        .map_while(|&x| if x < 4 { Some(x * 2) } else { None })
        .collect();  // [2, 4, 6]
    
    // Inspect (peek at elements without modifying)
    let inspected: Vec<i32> = numbers
        .iter()
        .inspect(|&x| println!("About to process: {}", x))
        .map(|&x| x * 2)
        .inspect(|&x| println!("Processed: {}", x))
        .collect();
    
    // Filter map (map + filter in one)
    let words = vec!["1", "two", "3", "four", "5"];
    let parsed: Vec<i32> = words
        .iter()
        .filter_map(|&s| s.parse().ok())
        .collect();  // [1, 3, 5]
    
    // Flatten (for nested iterators)
    let nested = vec![vec![1, 2], vec![3, 4], vec![5]];
    let flattened: Vec<i32> = nested.iter().flatten().cloned().collect();
    // [1, 2, 3, 4, 5]
    
    // Flat map (map + flatten)
    let sentences = vec!["hello world", "rust is awesome"];
    let words: Vec<&str> = sentences
        .iter()
        .flat_map(|&s| s.split_whitespace())
        .collect();
    // ["hello", "world", "rust", "is", "awesome"]
    
    // Scan (stateful map)
    let scanned: Vec<i32> = numbers
        .iter()
        .scan(0, |state, &x| {
            *state += x;
            Some(*state)
        })
        .collect();  // [1, 3, 6, 10, 15]
    
    // Fuse (make iterator fuse after None)
    let mut iter = numbers.iter().fuse();
}
```

---

## 4. Filtering

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    // Filter (keep elements satisfying predicate)
    let evens: Vec<i32> = numbers
        .iter()
        .filter(|&&x| x % 2 == 0)
        .cloned()
        .collect();  // [2, 4, 6, 8, 10]
    
    // Filter with index
    let with_index: Vec<i32> = numbers
        .iter()
        .enumerate()
        .filter(|&(i, _)| i % 2 == 0)
        .map(|(_, &x)| x)
        .collect();  // [1, 3, 5, 7, 9]
    
    // Take while (take elements until condition fails)
    let taken: Vec<i32> = numbers
        .iter()
        .take_while(|&&x| x < 5)
        .cloned()
        .collect();  // [1, 2, 3, 4]
    
    // Skip while (skip elements until condition fails)
    let skipped: Vec<i32> = numbers
        .iter()
        .skip_while(|&&x| x < 5)
        .cloned()
        .collect();  // [5, 6, 7, 8, 9, 10]
    
    // Filter out duplicates (by comparison)
    let duplicates = vec![1, 2, 2, 3, 3, 3, 4];
    let unique: Vec<i32> = duplicates
        .iter()
        .collect::<HashSet<_>>()
        .into_iter()
        .cloned()
        .collect();  // [1, 2, 3, 4]
    
    // Filter out duplicates (consecutive)
    let consecutive = vec![1, 1, 2, 2, 3, 1, 1];
    let deduped: Vec<i32> = consecutive
        .iter()
        .cloned()
        .collect::<Vec<_>>()
        .into_iter()
        .dedup()  // Requires Itertools
        .collect();
    
    // Filter by type (with downcasting)
    use std::any::Any;
    let mixed: Vec<Box<dyn Any>> = vec![
        Box::new(1),
        Box::new("hello"),
        Box::new(3.14),
    ];
    
    let integers: Vec<i32> = mixed
        .into_iter()
        .filter_map(|item| item.downcast::<i32>().ok().map(|b| *b))
        .collect();  // [1]
}
```

---

## 5. Combining Iterators

```rust
fn main() {
    let numbers1 = vec![1, 2, 3];
    let numbers2 = vec![4, 5, 6];
    let numbers3 = vec![7, 8, 9];
    
    // Chain (concatenate iterators)
    let chained: Vec<i32> = numbers1
        .iter()
        .chain(numbers2.iter())
        .chain(numbers3.iter())
        .cloned()
        .collect();  // [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    // Zip (pair elements from two iterators)
    let zipped: Vec<(i32, i32)> = numbers1
        .iter()
        .zip(numbers2.iter())
        .map(|(&a, &b)| (a, b))
        .collect();  // [(1,4), (2,5), (3,6)]
    
    // Zip with index
    let with_index: Vec<(usize, i32)> = numbers1
        .iter()
        .enumerate()
        .map(|(i, &x)| (i, x))
        .collect();
    
    // Multi-zip (using itertools)
    use itertools::multizip;
    let multi: Vec<(i32, i32, i32)> = multizip((
        numbers1.iter(),
        numbers2.iter(),
        numbers3.iter(),
    ))
    .map(|(&a, &b, &c)| (a, b, c))
    .collect();  // [(1,4,7), (2,5,8), (3,6,9)]
    
    // Interleave (alternate elements)
    use itertools::Itertools;
    let interleaved: Vec<i32> = numbers1
        .iter()
        .interleave(numbers2.iter())
        .cloned()
        .collect();  // [1, 4, 2, 5, 3, 6]
    
    // Merge (sorted order)
    let sorted1 = vec![1, 3, 5];
    let sorted2 = vec![2, 4, 6];
    let merged: Vec<i32> = sorted1
        .iter()
        .merge(sorted2.iter())
        .cloned()
        .collect();  // [1, 2, 3, 4, 5, 6]
    
    // Cartesian product
    let colors = vec!["red", "green"];
    let sizes = vec!["S", "M", "L"];
    let products: Vec<(&str, &str)> = colors
        .iter()
        .flat_map(|&c| sizes.iter().map(move |&s| (c, s)))
        .collect();
    // [("red","S"), ("red","M"), ("red","L"), ("green","S"), ...]
}
```

---

## 6. Reducing & Folding

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Fold (with initial value)
    let sum = numbers.iter().fold(0, |acc, &x| acc + x);  // 15
    
    // Reduce (without initial value, returns Option)
    let product = numbers.iter().reduce(|acc, x| acc * x);  // Some(120)
    
    // Rfold (reverse fold)
    let reversed_sum = numbers.iter().rfold(0, |acc, &x| acc + x);  // 15
    
    // Scan (stateful fold that yields intermediate values)
    let running_sum: Vec<i32> = numbers
        .iter()
        .scan(0, |acc, &x| {
            *acc += x;
            Some(*acc)
        })
        .collect();  // [1, 3, 6, 10, 15]
    
    // Try_fold (fallible fold)
    let result = numbers.iter().try_fold(0, |acc, &x| {
        if x < 10 {
            Ok(acc + x)
        } else {
            Err("Number too large")
        }
    });  // Ok(15)
    
    // Sum (numeric types)
    let total: i32 = numbers.iter().sum();  // 15
    
    // Product
    let product_num: i32 = numbers.iter().product();  // 120
    
    // Min/Max
    let min = numbers.iter().min();  // Some(1)
    let max = numbers.iter().max();  // Some(5)
    
    // Min/Max by key
    let words = vec!["apple", "banana", "cherry", "date"];
    let longest = words.iter().max_by_key(|&s| s.len());  // Some("banana")
    
    // Min/Max with custom comparison
    let earliest = words.iter().min_by(|&a, &b| {
        a.chars().next().cmp(&b.chars().next())
    });  // Some("apple") - alphabetically first
}
```

---

## 7. Searching & Finding

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5, 3, 2, 1];
    
    // Find first matching element
    let found = numbers.iter().find(|&&x| x == 3);  // Some(3)
    
    // Find last matching element
    let last_found = numbers.iter().rfind(|&&x| x == 3);  // Some(3)
    
    // Find position
    let position = numbers.iter().position(|&x| x == 3);  // Some(2)
    
    // Find last position
    let last_pos = numbers.iter().rposition(|&x| x == 3);  // Some(5)
    
    // Find in map
    let mut map = HashMap::new();
    map.insert("a", 1);
    map.insert("b", 2);
    
    let found_value = map.iter().find(|(_, &v)| v == 2);  // Some((&"b", &2))
    
    // Any (exists)
    let has_negative = numbers.iter().any(|&x| x < 0);  // false
    
    // All (universal)
    let all_positive = numbers.iter().all(|&x| x > 0);  // true
    
    // Contains (if element implements PartialEq)
    let contains_three = numbers.iter().any(|&x| x == 3);  // true
    
    // Find map (find + map in one)
    let parsed = vec!["1", "two", "3", "four"]
        .iter()
        .find_map(|&s| s.parse::<i32>().ok());  // Some(1)
    
    // Position with custom predicate
    let pos = numbers
        .iter()
        .enumerate()
        .find(|&(_, &x)| x > 4)
        .map(|(i, _)| i);  // Some(4)
    
    // Max/Min with custom key
    let people = vec![("Alice", 30), ("Bob", 25), ("Charlie", 35)];
    let oldest = people.iter().max_by_key(|&(_, age)| age);  // Some(&("Charlie", 35))
}
```

---

## 8. Skipping & Taking

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    // Take first n elements
    let first_three: Vec<i32> = numbers.iter().take(3).cloned().collect();  // [1,2,3]
    
    // Skip first n elements
    let after_five: Vec<i32> = numbers.iter().skip(5).cloned().collect();  // [6,7,8,9,10]
    
    // Take while condition holds
    let while_less_5: Vec<i32> = numbers
        .iter()
        .take_while(|&&x| x < 5)
        .cloned()
        .collect();  // [1,2,3,4]
    
    // Skip while condition holds
    let after_5: Vec<i32> = numbers
        .iter()
        .skip_while(|&&x| x < 5)
        .cloned()
        .collect();  // [5,6,7,8,9,10]
    
    // Skip and take together (paging)
    let page2: Vec<i32> = numbers.iter().skip(3).take(3).cloned().collect();  // [4,5,6]
    
    // Skip while and take while (range)
    let middle: Vec<i32> = numbers
        .iter()
        .skip_while(|&&x| x < 3)
        .take_while(|&&x| x < 8)
        .cloned()
        .collect();  // [3,4,5,6,7]
    
    // Skip nth (skip exactly n, then get next)
    let skipped_two = numbers.iter().skip(2).next();  // Some(3)
    
    // Take from end (requires Itertools)
    use itertools::Itertools;
    let last_three: Vec<i32> = numbers.iter().rev().take(3).rev().cloned().collect();  // [8,9,10]
    
    // Step by (skip elements)
    let every_second: Vec<i32> = numbers.iter().step_by(2).cloned().collect();  // [1,3,5,7,9]
    
    // Take exact (size-limited)
    let exact: Vec<i32> = numbers.iter().take(20).cloned().collect();  // Still only 10 elements
}
```

---

## 9. Loops & Side Effects

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // For loop (most common)
    for item in &numbers {
        println!("{}", item);
    }
    
    // For_each (functional style)
    numbers.iter().for_each(|&x| println!("{}", x));
    
    // For_each with index
    numbers
        .iter()
        .enumerate()
        .for_each(|(i, &x)| println!("[{}]: {}", i, x));
    
    // While let (manual iteration)
    let mut iter = numbers.iter();
    while let Some(x) = iter.next() {
        println!("{}", x);
    }
    
    // Loop with next (full control)
    let mut iter = numbers.iter();
    loop {
        match iter.next() {
            Some(x) => println!("{}", x),
            None => break,
        }
    }
    
    // Inspect (peek without consuming)
    let result: Vec<i32> = numbers
        .iter()
        .inspect(|&x| println!("Processing: {}", x))
        .map(|&x| x * 2)
        .inspect(|&x| println!("Result: {}", x))
        .collect();
    
    // For_each with mutable state
    let mut sum = 0;
    numbers.iter().for_each(|&x| sum += x);
    println!("Sum: {}", sum);
    
    // Side effects with map (discouraged - use for_each)
    numbers.iter().map(|&x| {
        println!("{}", x);
        x
    }).count();  // Force evaluation
    
    // Try_for_each (fallible iteration)
    let result: Result<(), &str> = numbers
        .iter()
        .try_for_each(|&x| {
            if x < 10 {
                println!("{}", x);
                Ok(())
            } else {
                Err("Number too large")
            }
        });
}
```

---

## 10. Collection Operations

```rust
use std::collections::{HashMap, HashSet, VecDeque};

fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Collect to Vec
    let vec: Vec<i32> = numbers.iter().map(|&x| x * 2).collect();
    
    // Collect to HashSet (deduplicates)
    let duplicates = vec![1, 2, 2, 3, 3, 3];
    let set: HashSet<i32> = duplicates.into_iter().collect();  // {1,2,3}
    
    // Collect to HashMap
    let pairs = vec![("a", 1), ("b", 2), ("c", 3)];
    let map: HashMap<&str, i32> = pairs.into_iter().collect();
    
    // Collect to VecDeque
    let deque: VecDeque<i32> = numbers.iter().cloned().collect();
    
    // Collect to String
    let chars = vec!['h', 'e', 'l', 'l', 'o'];
    let string: String = chars.into_iter().collect();  // "hello"
    
    // Collect to Result (collects first error or Ok)
    let results = vec![Ok(1), Ok(2), Ok(3)];
    let collected: Result<Vec<i32>, &str> = results.into_iter().collect();  // Ok([1,2,3])
    
    // Collect to Option
    let options = vec![Some(1), Some(2), Some(3)];
    let collected: Option<Vec<i32>> = options.into_iter().collect();  // Some([1,2,3])
    
    // Partition into two collections
    let (evens, odds): (Vec<i32>, Vec<i32>) = numbers
        .iter()
        .partition(|&&x| x % 2 == 0);
    
    // Group by (requires Itertools)
    use itertools::Itertools;
    let grouped = numbers
        .iter()
        .into_group_map_by(|&&x| x % 3);
    // {0: [3], 1: [1,4], 2: [2,5]}
    
    // Chunks (requires Itertools)
    let chunks: Vec<Vec<i32>> = numbers
        .iter()
        .chunks(2)
        .into_iter()
        .map(|chunk| chunk.cloned().collect())
        .collect();  // [[1,2], [3,4], [5]]
    
    // Windows (sliding windows)
    let windows: Vec<&[i32]> = numbers.windows(2).collect();  // [[1,2], [2,3], [3,4], [4,5]]
}
```

---

## 11. Numeric Operations

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Sum
    let sum: i32 = numbers.iter().sum();  // 15
    
    // Product
    let product: i32 = numbers.iter().product();  // 120
    
    // Average
    let avg = numbers.iter().sum::<i32>() as f64 / numbers.len() as f64;  // 3.0
    
    // Min/Max
    let min = numbers.iter().min();  // Some(1)
    let max = numbers.iter().max();  // Some(5)
    
    // Cumulative sum
    let cumulative: Vec<i32> = numbers
        .iter()
        .scan(0, |acc, &x| {
            *acc += x;
            Some(*acc)
        })
        .collect();  // [1,3,6,10,15]
    
    // Differences between consecutive elements
    let diffs: Vec<i32> = numbers
        .windows(2)
        .map(|w| w[1] - w[0])
        .collect();  // [1,1,1,1]
    
    // Running statistics
    let stats: Vec<(i32, f64)> = numbers
        .iter()
        .enumerate()
        .scan((0, 0.0), |(count, sum), (_, &x)| {
            *count += 1;
            *sum += x as f64;
            Some((x, *sum / *count as f64))
        })
        .collect();  // [(1,1.0), (2,1.5), (3,2.0), (4,2.5), (5,3.0)]
    
    // Filter out-of-range
    let in_range: Vec<i32> = numbers
        .iter()
        .filter(|&&x| x >= 2 && x <= 4)
        .cloned()
        .collect();  // [2,3,4]
    
    // Clamp values
    let clamped: Vec<i32> = numbers
        .iter()
        .map(|&x| if x < 2 { 2 } else if x > 4 { 4 } else { x })
        .collect();  // [2,2,3,4,4]
}
```

---

## 12. Conditional Operations

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // All (universal quantifier)
    let all_positive = numbers.iter().all(|&x| x > 0);  // true
    let all_less_than_5 = numbers.iter().all(|&x| x < 5);  // false
    
    // Any (existential quantifier)
    let has_even = numbers.iter().any(|&x| x % 2 == 0);  // true
    let has_zero = numbers.iter().any(|&x| x == 0);  // false
    
    // Filter (keep matching)
    let evens: Vec<i32> = numbers.iter().filter(|&&x| x % 2 == 0).cloned().collect();
    
    // Filter with index
    let odd_indices: Vec<i32> = numbers
        .iter()
        .enumerate()
        .filter(|&(i, _)| i % 2 == 1)
        .map(|(_, &x)| x)
        .collect();  // [2,4]
    
    // Take while
    let less_than_4: Vec<i32> = numbers
        .iter()
        .take_while(|&&x| x < 4)
        .cloned()
        .collect();  // [1,2,3]
    
    // Skip while
    let from_4: Vec<i32> = numbers
        .iter()
        .skip_while(|&&x| x < 4)
        .cloned()
        .collect();  // [4,5]
    
    // Filter_map (filter and map in one)
    let strings = vec!["1", "two", "3", "four"];
    let parsed: Vec<i32> = strings
        .iter()
        .filter_map(|&s| s.parse().ok())
        .collect();  // [1,3]
    
    // Chain with conditional
    let extended: Vec<i32> = numbers
        .iter()
        .cloned()
        .chain(if numbers.len() > 3 { vec![6,7] } else { vec![] })
        .collect();  // [1,2,3,4,5,6,7]
}
```

---

## 13. Position & Indexing

```rust
fn main() {
    let numbers = vec![10, 20, 30, 40, 50, 30, 20, 10];
    
    // Position of first match
    let first_30 = numbers.iter().position(|&x| x == 30);  // Some(2)
    
    // Position from end (last match)
    let last_30 = numbers.iter().rposition(|&x| x == 30);  // Some(5)
    
    // Find element at index
    let at_index_3 = numbers.iter().nth(3);  // Some(40)
    
    // Find element from end
    let last_second = numbers.iter().rev().nth(1);  // Some(20)
    
    // Enumerate (get index and value)
    for (i, &val) in numbers.iter().enumerate() {
        println!("[{}]: {}", i, val);
    }
    
    // Find position with multiple conditions
    let pos = numbers
        .iter()
        .enumerate()
        .find(|&(i, &x)| x > 30 && i > 3)
        .map(|(i, _)| i);  // Some(4) - value 40 at index 4
    
    // Indices of all matches
    let indices: Vec<usize> = numbers
        .iter()
        .enumerate()
        .filter(|&(_, &x)| x == 30)
        .map(|(i, _)| i)
        .collect();  // [2,5]
    
    // Element-wise comparison
    let other = vec![10, 20, 30, 40, 50];
    let equal_pairs: Vec<bool> = numbers[..5]
        .iter()
        .zip(other.iter())
        .map(|(a, b)| a == b)
        .collect();  // [true, true, true, true, true]
}
```

---

## 14. Flattening & Nested Iteration

```rust
fn main() {
    // Flatten nested collections
    let nested = vec![vec![1, 2], vec![3, 4], vec![5]];
    let flattened: Vec<i32> = nested.iter().flatten().cloned().collect();
    // [1, 2, 3, 4, 5]
    
    // Flatten with mutable access
    let mut nested_mut = vec![vec![1, 2], vec![3, 4]];
    for item in nested_mut.iter_mut().flatten() {
        *item *= 2;
    }
    // nested_mut = [[2,4], [6,8]]
    
    // Flat map (map + flatten)
    let sentences = vec!["hello world", "rust is awesome"];
    let words: Vec<&str> = sentences
        .iter()
        .flat_map(|&s| s.split_whitespace())
        .collect();
    // ["hello", "world", "rust", "is", "awesome"]
    
    // Flatten Option
    let options = vec![Some(1), None, Some(2), None, Some(3)];
    let flattened_opts: Vec<i32> = options.into_iter().flatten().collect();  // [1,2,3]
    
    // Flatten Result (only Ok values)
    let results = vec![Ok(1), Err("error"), Ok(2), Err("fail")];
    let flattened_results: Vec<i32> = results
        .into_iter()
        .filter_map(|r| r.ok())
        .collect();  // [1,2]
    
    // Nested iteration with flat_map
    let matrix = vec![
        vec![1, 2, 3],
        vec![4, 5, 6],
        vec![7, 8, 9],
    ];
    
    let transposed: Vec<Vec<i32>> = (0..3)
        .map(|col| matrix.iter().map(|row| row[col]).collect())
        .collect();
    
    // Cartesian product with flat_map
    let colors = ["red", "green"];
    let sizes = ["S", "M", "L"];
    let products: Vec<(&str, &str)> = colors
        .iter()
        .flat_map(|&c| sizes.iter().map(move |&s| (c, s)))
        .collect();
}
```

---

## 15. Peekable & Advance Control

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    
    // Peekable - look ahead without consuming
    let mut peekable = numbers.iter().peekable();
    
    while let Some(&item) = peekable.peek() {
        if *item == 3 {
            println!("Found 3, stopping");
            break;
        }
        println!("Processing: {}", peekable.next().unwrap());
    }
    
    // Peek and decide
    let mut peekable = numbers.iter().peekable();
    while let Some(_) = peekable.peek() {
        let next = peekable.next().unwrap();
        if let Some(peek) = peekable.peek() {
            println!("Current: {}, Next: {}", next, peek);
        } else {
            println!("Last: {}", next);
        }
    }
    
    // Fuse - make iterator fuse after None
    let mut iter = numbers.iter().fuse();
    
    // Cycle - infinitely repeat iterator
    let cycle = numbers.iter().cycle();
    let first_10: Vec<i32> = cycle.take(10).cloned().collect();
    // [1,2,3,4,5,1,2,3,4,5]
    
    // Skip and next combination
    let mut iter = numbers.iter();
    let third = iter.nth(2);  // Some(3)
    let fourth = iter.next();  // Some(4)
    
    // Advance by with try_fold
    let mut iter = numbers.iter();
    let sum_first_3 = iter
        .take(3)
        .try_fold(0, |acc, &x| Ok::<_, ()>(acc + x))
        .unwrap();  // 6
    
    // Inspect without consuming (for debugging)
    let doubled: Vec<i32> = numbers
        .iter()
        .inspect(|&x| println!("About to double: {}", x))
        .map(|&x| x * 2)
        .inspect(|&x| println!("Doubled: {}", x))
        .collect();
}
```

---

## 16. Custom Iterators

```rust
// Simple custom iterator
struct Counter {
    count: u32,
    max: u32,
}

impl Counter {
    fn new(max: u32) -> Self {
        Counter { count: 0, max }
    }
}

impl Iterator for Counter {
    type Item = u32;
    
    fn next(&mut self) -> Option<Self::Item> {
        if self.count < self.max {
            self.count += 1;
            Some(self.count)
        } else {
            None
        }
    }
}

// Fibonacci iterator
struct Fibonacci {
    current: u32,
    next: u32,
}

impl Fibonacci {
    fn new() -> Self {
        Fibonacci { current: 0, next: 1 }
    }
}

impl Iterator for Fibonacci {
    type Item = u32;
    
    fn next(&mut self) -> Option<Self::Item> {
        let new_next = self.current + self.next;
        self.current = self.next;
        self.next = new_next;
        Some(self.current)
    }
}

// Custom iterator with state
struct StepIterator<T> {
    start: T,
    end: T,
    step: T,
    current: T,
}

impl<T: std::ops::Add<Output = T> + PartialOrd + Copy> Iterator for StepIterator<T> {
    type Item = T;
    
    fn next(&mut self) -> Option<Self::Item> {
        if self.current < self.end {
            let result = self.current;
            self.current = self.current + self.step;
            Some(result)
        } else {
            None
        }
    }
}

// Usage
fn main() {
    let counter = Counter::new(5);
    let sum: u32 = counter.sum();  // 15
    
    let fib = Fibonacci::new();
    let first_10: Vec<u32> = fib.take(10).collect();  // [1,1,2,3,5,8,13,21,34,55]
    
    let step_iter = StepIterator {
        start: 0,
        end: 10,
        step: 2,
        current: 0,
    };
    let evens: Vec<i32> = step_iter.collect();  // [0,2,4,6,8]
}
```

---

## 17. Performance & Optimization

```rust
fn main() {
    // Size hints
    let numbers = vec![1, 2, 3, 4, 5];
    let iter = numbers.iter();
    let (lower, upper) = iter.size_hint();
    println!("At least {} elements, at most {:?}", lower, upper);  // (5, Some(5))
    
    // Exact size iterator
    fn process_exact<T: ExactSizeIterator>(iter: T) {
        println!("Length: {}", iter.len());
    }
    
    // TrustedLen (unstable) - guarantees accurate size hint
    
    // Double-ended iterator (can iterate from both ends)
    let mut iter = numbers.iter();
    println!("First: {:?}", iter.next());      // Some(1)
    println!("Last: {:?}", iter.next_back());  // Some(5)
    
    // Chain performance - O(1)
    let combined = numbers.iter().chain(vec![6,7].iter());
    
    // Zip performance - O(min(len1, len2))
    let zipped = numbers.iter().zip(vec!['a','b','c'].iter());
    
    // Collect to specific collection
    let vec: Vec<i32> = numbers.iter().map(|&x| x * 2).collect();  // Pre-allocates
    
    // Extend existing collection
    let mut existing = vec![0];
    existing.extend(numbers.iter().map(|&x| x * 2));
    
    // Specialized collectors
    use std::collections::LinkedList;
    let list: LinkedList<i32> = numbers.iter().cloned().collect();
    
    // Avoid allocations with by_ref()
    let mut iter = numbers.iter();
    let first_three: Vec<i32> = iter.by_ref().take(3).cloned().collect();
    let remaining: Vec<i32> = iter.cloned().collect();  // Continue using same iter
    
    // Lazy evaluation - iterators don't do work until consumed
    let mapped = numbers.iter().map(|&x| {
        println!("Processing {}", x);
        x * 2
    });  // Nothing printed yet
    
    let collected: Vec<i32> = mapped.collect();  // Now processing happens
    
    // Short-circuiting
    let found = numbers.iter().any(|&x| {
        println!("Checking {}", x);
        x == 3
    });  // Stops at 3
}
```

---

## Quick Reference Table

| Category | Method | Description |
|----------|--------|-------------|
| **Creation** | `iter()`, `iter_mut()`, `into_iter()` | Create iterators from collections |
| | `0..5`, `0..=5` | Range iterators |
| | `std::iter::once()`, `std::iter::repeat()` | Generate simple iterators |
| | `std::iter::from_fn()`, `std::iter::successors()` | Custom generators |
| **Consumption** | `collect()`, `count()`, `last()` | Consume iterator to produce value |
| | `fold()`, `reduce()` | Combine elements |
| | `sum()`, `product()` | Numeric aggregation |
| **Transformation** | `map()`, `enumerate()` | Transform each element |
| | `filter()`, `filter_map()` | Keep/discard elements |
| | `flat_map()`, `flatten()` | Handle nested iterators |
| | `scan()` | Stateful transformation |
| **Combination** | `chain()` | Concatenate iterators |
| | `zip()` | Pair elements |
| | `cycle()` | Repeat infinitely |
| **Search** | `find()`, `position()` | Find element or position |
| | `any()`, `all()` | Test conditions |
| | `contains()` | Check membership |
| **Slicing** | `take()`, `skip()` | Take/skip first n |
| | `take_while()`, `skip_while()` | Take/skip while condition |
| | `nth()` | Get nth element |
| **Side Effects** | `for_each()` | Apply function to each |
| | `inspect()` | Peek without consuming |
| **Special** | `peekable()` | Look ahead |
| | `rev()` | Reverse iterator |
| | `step_by()` | Skip elements |
| | `fuse()` | Continue returning None |

**Key Iterator Traits:**
- `Iterator`: Core trait with `next()` method
- `IntoIterator`: Convert type into iterator (`for` loops)
- `ExactSizeIterator`: Knows exact length
- `DoubleEndedIterator`: Can iterate from both ends
- `FusedIterator`: Guarantees to return `None` after first `None`

**Performance Tips:**
- Iterators are **lazy** - no work until consumed
- Use `size_hint()` for pre-allocation
- `collect()` pre-allocates when possible
- `by_ref()` allows partial consumption without moving
- Chain and zip are O(1)
- Avoid multiple `collect()` calls when one suffices