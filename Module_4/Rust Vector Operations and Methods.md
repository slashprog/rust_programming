# Rust Vector (Vec<T>) Operations & Methods - Complete Reference

## Table of Contents
1. [Creating Vectors](#1-creating-vectors)
2. [Adding Elements](#2-adding-elements)
3. [Removing Elements](#3-removing-elements)
4. [Accessing Elements](#4-accessing-elements)
5. [Searching & Finding](#5-searching--finding)
6. [Modifying Elements](#6-modifying-elements)
7. [Sorting & Ordering](#7-sorting--ordering)
8. [Slicing & Views](#8-slicing--views)
9. [Size & Capacity](#9-size--capacity)
10. [Comparing Vectors](#10-comparing-vectors)
11. [Conversion Operations](#11-conversion-operations)
12. [Mathematical Operations](#12-mathematical-operations)
13. [Advanced Operations](#13-advanced-operations)
14. [Memory & Performance](#14-memory--performance)
15. [Common Patterns](#15-common-patterns)
16. [Vector of Custom Types](#16-vector-of-custom-types)
17. [Specialized Vectors](#17-specialized-vectors)

---

## 1. Creating Vectors

```rust
fn main() {
    // Empty vector
    let mut v1: Vec<i32> = Vec::new();
    
    // With initial capacity
    let mut v2: Vec<i32> = Vec::with_capacity(10);
    
    // Using vec! macro
    let v3 = vec![1, 2, 3, 4, 5];
    
    // Initialize with repeated value
    let v4 = vec![0; 10];  // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    // From array
    let arr = [1, 2, 3, 4, 5];
    let v5 = arr.to_vec();
    let v6 = Vec::from(arr);
    
    // From slice
    let slice = &[1, 2, 3, 4, 5];
    let v7 = slice.to_vec();
    let v8 = Vec::from(slice);
    
    // From iterator
    let v9: Vec<i32> = (0..5).collect();  // [0, 1, 2, 3, 4]
    let v10: Vec<i32> = (0..10).step_by(2).collect();  // [0, 2, 4, 6, 8]
    
    // From other collections
    use std::collections::{HashSet, VecDeque};
    
    let set: HashSet<i32> = [1, 2, 3].iter().cloned().collect();
    let v11: Vec<i32> = set.into_iter().collect();
    
    let deque = VecDeque::from(vec![1, 2, 3]);
    let v12: Vec<i32> = deque.into();
    
    // From String (bytes)
    let s = String::from("hello");
    let v13: Vec<u8> = s.into_bytes();
    
    // From array of arrays
    let v14 = vec![[1, 2], [3, 4], [5, 6]];
    
    // From Option
    let opt = Some(42);
    let v15: Vec<i32> = opt.into_iter().collect();  // [42]
    
    // Using std::iter::from_fn
    let mut count = 0;
    let v16: Vec<i32> = std::iter::from_fn(move || {
        count += 1;
        if count <= 5 { Some(count) } else { None }
    }).collect();  // [1, 2, 3, 4, 5]
}
```

---

## 2. Adding Elements

```rust
fn main() {
    let mut v = Vec::new();
    
    // Push (add to end)
    v.push(1);
    v.push(2);
    v.push(3);  // v = [1, 2, 3]
    
    // Insert at index (shifts elements right)
    v.insert(1, 10);  // [1, 10, 2, 3]
    
    // Extend with another vector
    let mut other = vec![4, 5, 6];
    v.append(&mut other);  // v = [1, 10, 2, 3, 4, 5, 6], other = []
    
    // Extend with iterator
    v.extend([7, 8, 9]);  // [1, 10, 2, 3, 4, 5, 6, 7, 8, 9]
    
    // Extend from slice
    v.extend_from_slice(&[10, 11]);  // [..., 10, 11]
    
    // Extend with repeated value (using resize)
    v.resize(v.len() + 3, 0);  // Add three zeros
    
    // Splice (replace range with new values)
    let mut v = vec![1, 2, 3, 4, 5];
    let removed: Vec<_> = v.splice(1..3, [10, 20, 30]).collect();
    // v = [1, 10, 20, 30, 4, 5], removed = [2, 3]
    
    // Insert multiple at once (using splice)
    let mut v = vec![1, 2, 5];
    v.splice(2..2, [3, 4]);  // Insert without removing
    // v = [1, 2, 3, 4, 5]
    
    // Pre-allocate and fill
    let mut v = Vec::with_capacity(5);
    v.resize(5, 0);  // [0, 0, 0, 0, 0]
    
    // Fill with values
    let mut v = vec![1, 2, 3];
    v.resize(5, 0);  // [1, 2, 3, 0, 0]
}
```

---

## 3. Removing Elements

```rust
fn main() {
    let mut v = vec![1, 2, 3, 4, 5, 3, 2, 1];
    
    // Pop (remove last)
    let last = v.pop();  // Some(1), v = [1,2,3,4,5,3,2]
    
    // Remove at index (shifts elements left)
    let removed = v.remove(2);  // 3, v = [1,2,4,5,3,2]
    
    // Remove and return last element (fast)
    let last_fast = v.swap_remove(0);  // Removes 1, moves last element (2) to index 0
    // v = [2,4,5,3,2] (order changed!)
    
    // Clear (remove all)
    let mut v = vec![1, 2, 3];
    v.clear();  // v = []
    
    // Truncate to length
    let mut v = vec![1, 2, 3, 4, 5];
    v.truncate(3);  // v = [1, 2, 3]
    
    // Drain (remove range and get iterator)
    let mut v = vec![1, 2, 3, 4, 5];
    let drained: Vec<_> = v.drain(1..3).collect();  // drained = [2,3], v = [1,4,5]
    
    // Retain (keep elements matching predicate)
    let mut v = vec![1, 2, 3, 4, 5];
    v.retain(|&x| x % 2 == 0);  // v = [2,4]
    
    // Retain with mutable access (unstable)
    // v.retain_mut(|x| *x % 2 == 0);
    
    // Dedup (remove consecutive duplicates)
    let mut v = vec![1, 2, 2, 3, 3, 3, 4, 2, 2];
    v.dedup();  // v = [1, 2, 3, 4, 2, 2] (only consecutive duplicates)
    
    // Dedup by key
    #[derive(Debug, PartialEq)]
    struct Point(i32, i32);
    
    let mut points = vec![Point(1,1), Point(1,2), Point(2,1), Point(2,1)];
    points.dedup_by_key(|p| p.0);  // Keep only first with same x
    // points = [Point(1,1), Point(2,1)]
    
    // Dedup with custom comparison
    let mut v = vec!["apple", "APPLE", "banana", "BANANA", "cherry"];
    v.dedup_by(|a, b| a.to_lowercase() == b.to_lowercase());
    // v = ["apple", "banana", "cherry"]
    
    // Remove element by value (if exists)
    if let Some(pos) = v.iter().position(|&x| x == 2) {
        v.remove(pos);
    }
}
```

---

## 4. Accessing Elements

```rust
fn main() {
    let v = vec![10, 20, 30, 40, 50];
    
    // Indexing (panics if out of bounds)
    let third = v[2];  // 30
    
    // Safe indexing (returns Option)
    let third = v.get(2);  // Some(&30)
    let hundredth = v.get(100);  // None
    
    // First and last
    let first = v.first();  // Some(&10)
    let last = v.last();    // Some(&50)
    
    // Get mutable references
    let mut v = vec![1, 2, 3];
    if let Some(value) = v.get_mut(1) {
        *value = 20;
    }
    
    // Get two mutable references (safe)
    let (left, right) = v.split_at_mut(2);
    left[0] = 10;
    right[0] = 30;
    
    // Get multiple elements
    let slice = &v[1..3];  // [20, 30]
    
    // Check if contains
    let has_20 = v.contains(&20);  // true
    
    // Get iterator
    for item in &v {
        println!("{}", item);
    }
    
    // Get mutable iterator
    for item in &mut v {
        *item *= 2;
    }
    
    // Get into iterator (consumes)
    for item in v.into_iter() {
        println!("{}", item);
    }
    // v can't be used after this!
    
    // Get element with default
    let v = vec![1, 2, 3];
    let val = v.get(5).unwrap_or(&0);  // &0
    
    // Get element or insert (using entry API - not directly available)
    // For HashMap-like behavior, use indexmap crate
}
```

---

## 5. Searching & Finding

```rust
fn main() {
    let v = vec![10, 20, 30, 40, 50, 30, 20, 10];
    
    // Linear search (returns Option<usize>)
    let pos = v.iter().position(|&x| x == 30);  // Some(2)
    
    // Find from end
    let last_pos = v.iter().rposition(|&x| x == 30);  // Some(5)
    
    // Find element (returns Option<&T>)
    let found = v.iter().find(|&&x| x == 40);  // Some(&40)
    
    // Find mutable element
    let mut v = v.clone();
    if let Some(x) = v.iter_mut().find(|x| **x == 40) {
        *x = 45;
    }
    
    // Binary search (requires sorted vector)
    let mut sorted = vec![10, 20, 30, 40, 50];
    let result = sorted.binary_search(&30);  // Ok(2)
    
    // Binary search with custom comparison
    let result = sorted.binary_search_by(|x| x.cmp(&35));
    // Err(3) - would be inserted at index 3
    
    // Binary search by key
    #[derive(Debug)]
    struct Person {
        name: String,
        age: u32,
    }
    
    let mut people = vec![
        Person { name: "Alice".to_string(), age: 30 },
        Person { name: "Bob".to_string(), age: 25 },
        Person { name: "Charlie".to_string(), age: 35 },
    ];
    
    // Sort by age first
    people.sort_by_key(|p| p.age);
    
    // Find by age using binary search
    let result = people.binary_search_by_key(&25, |p| p.age);
    // Ok(0) - Bob is at index 0
    
    // Check if all elements satisfy predicate
    let all_positive = v.iter().all(|&x| x > 0);  // true
    
    // Check if any element satisfies predicate
    let any_even = v.iter().any(|&x| x % 2 == 0);  // true
    
    // Count occurrences
    let count_30 = v.iter().filter(|&&x| x == 30).count();  // 2
    
    // Find min/max
    let min = v.iter().min();  // Some(&10)
    let max = v.iter().max();  // Some(&50)
    
    // Find min/max by key
    let words = vec!["apple", "banana", "cherry", "date"];
    let longest = words.iter().max_by_key(|&s| s.len());  // Some(&"banana")
}
```

---

## 6. Modifying Elements

```rust
fn main() {
    let mut v = vec![1, 2, 3, 4, 5];
    
    // Direct assignment (with index)
    v[2] = 30;  // [1, 2, 30, 4, 5]
    
    // Swap two elements
    v.swap(0, 4);  // [5, 2, 30, 4, 1]
    
    // Replace (returns old value)
    let old = std::mem::replace(&mut v[1], 20);  // old = 2, v[1] = 20
    
    // Map in place (using iter_mut)
    for item in &mut v {
        *item *= 2;
    }  // [10, 40, 60, 8, 2] (actually [10,40,60,8,2] - wait, let's track)
    
    // Using retain to filter in-place
    v.retain(|&x| x < 50);  // Keep only elements < 50
    
    // Using drain to remove and modify
    let mut v = vec![1, 2, 3, 4, 5];
    let doubled: Vec<_> = v.drain(1..4).map(|x| x * 2).collect();
    // v = [1, 5], doubled = [4, 6, 8]
    
    // Resize and fill
    v.resize(10, 0);  // [1, 5, 0, 0, 0, 0, 0, 0, 0, 0]
    
    // Resize with function (using resize_with)
    let mut v = vec![1, 2, 3];
    v.resize_with(5, Default::default);  // [1, 2, 3, 0, 0]
    
    // Extend and modify
    v.extend((0..3).map(|x| x * 10));  // [1,2,3,0,0,0,10,20]
    
    // Fill entire vector
    v.fill(42);  // All elements become 42
    
    // Fill range
    let mut v = vec![1, 2, 3, 4, 5];
    v[1..4].fill(0);  // [1, 0, 0, 0, 5]
    
    // Apply function to each element
    let mut v = vec![1, 2, 3, 4, 5];
    v.iter_mut().for_each(|x| *x *= *x);  // Square each: [1,4,9,16,25]
}
```

---

## 7. Sorting & Ordering

```rust
fn main() {
    let mut v = vec![3, 1, 4, 1, 5, 9, 2, 6];
    
    // Sort in ascending order
    v.sort();  // [1, 1, 2, 3, 4, 5, 6, 9]
    
    // Sort in descending order
    v.sort_by(|a, b| b.cmp(a));  // [9, 6, 5, 4, 3, 2, 1, 1]
    
    // Sort by key
    let mut words = vec!["apple", "banana", "cherry", "date"];
    words.sort_by_key(|s| s.len());  // ["date", "apple", "banana", "cherry"]
    
    // Sort with custom comparison
    let mut floats = vec![3.1, 1.2, 4.5, 1.1];
    floats.sort_by(|a, b| a.partial_cmp(b).unwrap());  // [1.1, 1.2, 3.1, 4.5]
    
    // Stable sort (preserves order of equal elements)
    let mut pairs = vec![(1, "a"), (3, "b"), (1, "c"), (2, "d")];
    pairs.sort_by_key(|&(k, _)| k);  // Unstable: could be (1,"c"),(1,"a")
    
    pairs.sort_by(|a, b| a.0.cmp(&b.0));  // Stable: (1,"a"),(1,"c")
    
    // Partial sort (sort first k elements)
    let mut v = vec![3, 1, 4, 1, 5, 9, 2, 6];
    v.select_nth_unstable(3);  // Elements 0-3 are sorted, rest are not
    
    // Reverse
    let mut v = vec![1, 2, 3, 4, 5];
    v.reverse();  // [5, 4, 3, 2, 1]
    
    // Rotate left
    let mut v = vec![1, 2, 3, 4, 5];
    v.rotate_left(2);  // [3, 4, 5, 1, 2]
    
    // Rotate right
    v.rotate_right(1);  // [2, 3, 4, 5, 1]
    
    // Check if sorted
    let sorted = vec![1, 2, 3, 4, 5];
    assert!(sorted.is_sorted());  // Requires Rust 1.81+
    
    // Check if sorted by key
    // assert!(words.is_sorted_by_key(|s| s.len()));
    
    // Partition (stable)
    let mut v = vec![1, 2, 3, 4, 5, 6];
    let pivot = v.partition_point(|&x| x < 4);  // 3
    
    // Partition in-place
    let mut v = vec![1, 2, 3, 4, 5, 6];
    let (left, right) = v.partition_dedup();  // Separate duplicates
}
```

---

## 8. Slicing & Views

```rust
fn main() {
    let v = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    // Full slice
    let full_slice: &[i32] = &v;
    
    // Range slices
    let slice1 = &v[..];       // all elements
    let slice2 = &v[2..];      // from index 2
    let slice3 = &v[..5];      // first 5 elements
    let slice4 = &v[2..5];     // indices 2,3,4
    let slice5 = &v[2..=4];    // indices 2,3,4 inclusive
    
    // Mutable slices
    let mut v = v.clone();
    let mut_slice: &mut [i32] = &mut v[2..5];
    mut_slice[0] = 30;
    
    // Split at index
    let (left, right) = v.split_at(5);
    // left = [1,2,3,4,5], right = [6,7,8,9,10]
    
    // Split at mutable
    let (left, right) = v.split_at_mut(5);
    left[0] = 10;
    right[0] = 60;
    
    // Split by predicate
    let v = vec![1, 2, 3, 4, 5, 6];
    let splits: Vec<&[i32]> = v.split(|&x| x % 3 == 0).collect();
    // [[1,2], [4,5], [6]]
    
    // Split inclusive (keep delimiter)
    let splits_inc: Vec<&[i32]> = v.split_inclusive(|&x| x % 3 == 0).collect();
    // [[1,2,3], [4,5,6]]
    
    // Windows (sliding windows)
    let windows: Vec<&[i32]> = v.windows(3).collect();
    // [[1,2,3], [2,3,4], [3,4,5], [4,5,6]]
    
    // Chunks (non-overlapping)
    let chunks: Vec<&[i32]> = v.chunks(3).collect();
    // [[1,2,3], [4,5,6]]
    
    // Chunks exact (requires exact size)
    let chunks_exact: Vec<&[i32]> = v.chunks_exact(3).collect();
    // [[1,2,3], [4,5,6]]
    
    // Chunks with remainder
    let v = vec![1, 2, 3, 4, 5];
    let mut chunks = v.chunks_exact(2);
    assert_eq!(chunks.next(), Some(&[1,2][..]));
    assert_eq!(chunks.next(), Some(&[3,4][..]));
    assert_eq!(chunks.remainder(), &[5]);
    
    // Array chunks (requires const size)
    // Requires nightly: let chunks: Vec<&[i32; 2]> = v.array_chunks().collect();
}
```

---

## 9. Size & Capacity

```rust
fn main() {
    let mut v = Vec::with_capacity(10);
    v.extend(&[1, 2, 3, 4, 5]);
    
    // Length (number of elements)
    println!("Length: {}", v.len());  // 5
    
    // Capacity (total allocated space)
    println!("Capacity: {}", v.capacity());  // 10
    
    // Check if empty
    println!("Is empty: {}", v.is_empty());  // false
    
    // Available space (capacity - length)
    let available = v.capacity() - v.len();  // 5
    
    // Reserve additional capacity
    v.reserve(10);  // Ensure at least capacity for 10 more
    println!("New capacity: {}", v.capacity());  // >= 20
    
    // Reserve exact capacity
    v.reserve_exact(5);  // Try to get exactly 5 more
    
    // Shrink to fit (reduce capacity to match length)
    v.shrink_to_fit();
    println!("Shrunk capacity: {}", v.capacity());  // 5
    
    // Shrink to a limit
    v.shrink_to(10);  // Shrink to at least 10 capacity
    
    // Memory size
    println!("Size of Vec on stack: {} bytes", std::mem::size_of_val(&v));  // 24 bytes (ptr, len, cap)
    
    // Heap allocation size
    println!("Heap allocation: {} bytes", v.capacity() * std::mem::size_of::<i32>());
    
    // Get pointer to data
    let ptr = v.as_ptr();
    let mut_ptr = v.as_mut_ptr();
    
    // Get raw parts (leaks memory if not handled)
    let (ptr, len, cap) = v.into_raw_parts();  // unsafe
    
    // Check capacity growth strategy
    let mut v = Vec::new();
    println!("Initial capacity: {}", v.capacity());  // 0
    
    v.push(1);
    println!("After 1 push: {}", v.capacity());  // 4 (typical growth factor)
    
    v.push(2);
    v.push(3);
    v.push(4);
    println!("At 4 elements: {}", v.capacity());  // 4
    
    v.push(5);
    println!("After 5th: {}", v.capacity());  // 8 (doubles)
}
```

---

## 10. Comparing Vectors

```rust
fn main() {
    let v1 = vec![1, 2, 3, 4, 5];
    let v2 = vec![1, 2, 3, 4, 5];
    let v3 = vec![5, 4, 3, 2, 1];
    
    // Equality (requires PartialEq)
    println!("v1 == v2: {}", v1 == v2);  // true
    println!("v1 == v3: {}", v1 == v3);  // false
    
    // Ordering (requires Ord)
    let a = vec![1, 2, 3];
    let b = vec![1, 2, 4];
    println!("a < b: {}", a < b);  // true (lexicographic)
    
    // Compare with slice
    println!("v1 == [1,2,3,4,5]: {}", v1 == [1,2,3,4,5]);  // true
    
    // Check if subset
    let subset = vec![2, 3, 4];
    let is_subset = subset.iter().all(|item| v1.contains(item));  // true
    
    // Check if disjoint
    let other = vec![6, 7, 8];
    let is_disjoint = !v1.iter().any(|item| other.contains(item));  // true
    
    // Compare element-wise
    let comparisons: Vec<bool> = v1.iter().zip(v2.iter()).map(|(a, b)| a == b).collect();
    
    // Find common elements
    let common: Vec<i32> = v1.iter()
        .filter(|&x| v2.contains(x))
        .cloned()
        .collect();
    
    // Find differences
    let diff: Vec<i32> = v1.iter()
        .filter(|&x| !v2.contains(x))
        .cloned()
        .collect();
    
    // Check if permutation
    let is_permutation = v1.len() == v3.len() && 
        v1.iter().all(|&x| v3.contains(&x));
    
    // Lexicographic comparison
    use std::cmp::Ordering;
    match v1.cmp(&v2) {
        Ordering::Less => println!("v1 < v2"),
        Ordering::Equal => println!("v1 == v2"),
        Ordering::Greater => println!("v1 > v2"),
    }
}
```

---

## 11. Conversion Operations

```rust
fn main() {
    // Vec to array (fixed size)
    let v = vec![1, 2, 3, 4, 5];
    
    // Try into array (requires same length)
    let array: [i32; 5] = v.try_into().unwrap();  // [1,2,3,4,5]
    
    // Vec to Box<[T]> (fixed-size heap slice)
    let boxed_slice: Box<[i32]> = v.into_boxed_slice();
    
    // Box<[T]> back to Vec
    let v2 = boxed_slice.into_vec();
    
    // Vec to VecDeque
    use std::collections::VecDeque;
    let deque = VecDeque::from(v2);
    
    // Vec to LinkedList
    use std::collections::LinkedList;
    let list = LinkedList::from(vec![1, 2, 3]);
    
    // Vec to HashSet (deduplicates)
    use std::collections::HashSet;
    let set: HashSet<i32> = vec![1, 2, 2, 3, 3, 3].into_iter().collect();
    // {1,2,3}
    
    // Vec to HashMap (requires pairs)
    let pairs = vec![(1, "a"), (2, "b"), (3, "c")];
    let map: HashMap<_, _> = pairs.into_iter().collect();
    
    // Vec to String (for characters)
    let chars = vec!['h', 'e', 'l', 'l', 'o'];
    let string: String = chars.into_iter().collect();  // "hello"
    
    // Vec<u8> to String (UTF-8)
    let bytes = vec![104, 101, 108, 108, 111];
    let string = String::from_utf8(bytes).unwrap();  // "hello"
    
    // Vec to array of arrays
    let v = vec![1, 2, 3, 4, 5, 6];
    let chunks: Vec<[i32; 2]> = v.chunks(2)
        .map(|chunk| [chunk[0], chunk[1]])
        .collect();  // [[1,2], [3,4], [5,6]]
    
    // Vec to iterator
    let v = vec![1, 2, 3];
    let iter = v.into_iter();  // Consumes v
    
    // Vec to pointer
    let v = vec![1, 2, 3];
    let ptr = v.as_ptr();
    let len = v.len();
    let capacity = v.capacity();
    
    // Rebuild from raw parts (unsafe)
    let v = unsafe { Vec::from_raw_parts(ptr as *mut i32, len, capacity) };
}
```

---

## 12. Mathematical Operations

```rust
fn main() {
    let v = vec![1, 2, 3, 4, 5];
    
    // Sum
    let sum: i32 = v.iter().sum();  // 15
    
    // Product
    let product: i32 = v.iter().product();  // 120
    
    // Average
    let avg = v.iter().sum::<i32>() as f64 / v.len() as f64;  // 3.0
    
    // Min/Max
    let min = v.iter().min().unwrap();  // 1
    let max = v.iter().max().unwrap();  // 5
    
    // Min/Max by key
    let words = vec!["apple", "banana", "cherry"];
    let longest = words.iter().max_by_key(|&s| s.len()).unwrap();  // "banana"
    
    // Cumulative operations
    let cumulative_sum: Vec<i32> = v.iter()
        .scan(0, |acc, &x| {
            *acc += x;
            Some(*acc)
        })
        .collect();  // [1, 3, 6, 10, 15]
    
    // Differences between consecutive elements
    let diffs: Vec<i32> = v.windows(2)
        .map(|w| w[1] - w[0])
        .collect();  // [1, 1, 1, 1]
    
    // Dot product
    let v1 = vec![1, 2, 3];
    let v2 = vec![4, 5, 6];
    let dot: i32 = v1.iter().zip(v2.iter()).map(|(a, b)| a * b).sum();  // 32
    
    // Vector addition
    let sum_vec: Vec<i32> = v1.iter().zip(v2.iter()).map(|(a, b)| a + b).collect();
    
    // Scalar multiplication
    let scaled: Vec<i32> = v1.iter().map(|&x| x * 2).collect();
    
    // Normalize (for floats)
    let v_float = vec![3.0, 4.0];
    let magnitude = v_float.iter().map(|&x| x * x).sum::<f64>().sqrt();
    let normalized: Vec<f64> = v_float.iter().map(|&x| x / magnitude).collect();
    // [0.6, 0.8]
    
    // Statistical measures
    let mean = v.iter().sum::<i32>() as f64 / v.len() as f64;
    
    let variance = v.iter()
        .map(|&x| {
            let diff = x as f64 - mean;
            diff * diff
        })
        .sum::<f64>() / v.len() as f64;
    
    let std_dev = variance.sqrt();
    
    // Median (requires sorted)
    let mut sorted = v.clone();
    sorted.sort();
    let median = if sorted.len() % 2 == 0 {
        (sorted[sorted.len()/2 - 1] + sorted[sorted.len()/2]) as f64 / 2.0
    } else {
        sorted[sorted.len()/2] as f64
    };
}
```

---

## 13. Advanced Operations

```rust
fn main() {
    // Permutations (requires itertools)
    use itertools::Itertools;
    
    let v = vec![1, 2, 3];
    let permutations: Vec<Vec<i32>> = v.into_iter().permutations(2).collect();
    // [[1,2], [1,3], [2,1], [2,3], [3,1], [3,2]]
    
    // Combinations
    let v = vec![1, 2, 3, 4];
    let combinations: Vec<Vec<i32>> = v.into_iter().combinations(2).collect();
    // [[1,2], [1,3], [1,4], [2,3], [2,4], [3,4]]
    
    // Cartesian product
    let v1 = vec![1, 2];
    let v2 = vec!['a', 'b'];
    let product: Vec<(i32, char)> = v1.into_iter()
        .flat_map(|i| v2.iter().map(move |&c| (i, c)))
        .collect();
    // [(1,'a'), (1,'b'), (2,'a'), (2,'b')]
    
    // Group by (requires itertools)
    let v = vec![1, 2, 3, 4, 5, 6];
    let groups = v.into_iter()
        .chunks(2)
        .into_iter()
        .map(|chunk| chunk.collect::<Vec<_>>())
        .collect::<Vec<Vec<_>>>();
    // [[1,2], [3,4], [5,6]]
    
    // Window operations
    let v = vec![1, 2, 3, 4, 5];
    
    // Moving average
    let window_size = 3;
    let moving_avg: Vec<f64> = v.windows(window_size)
        .map(|w| w.iter().sum::<i32>() as f64 / window_size as f64)
        .collect();
    // [2.0, 3.0, 4.0]
    
    // Rolling maximum
    let rolling_max: Vec<i32> = v.windows(3)
        .map(|w| *w.iter().max().unwrap())
        .collect();  // [3, 4, 5]
    
    // Binary operations
    let v1 = vec![1, 2, 3];
    let v2 = vec![4, 5, 6];
    
    // Element-wise operations
    let sum: Vec<i32> = v1.iter().zip(v2.iter()).map(|(a, b)| a + b).collect();
    let product: Vec<i32> = v1.iter().zip(v2.iter()).map(|(a, b)| a * b).collect();
    let max_elem: Vec<i32> = v1.iter().zip(v2.iter()).map(|(a, b)| *a.max(b)).collect();
    
    // Set operations (requires sorted)
    let mut set1 = vec![1, 2, 3, 4];
    let mut set2 = vec![3, 4, 5, 6];
    set1.sort();
    set2.sort();
    
    // Union (concat + dedup)
    let union: Vec<i32> = set1.iter()
        .chain(set2.iter())
        .cloned()
        .collect::<std::collections::HashSet<_>>()
        .into_iter()
        .collect();
    
    // Intersection
    let intersection: Vec<i32> = set1.iter()
        .filter(|&x| set2.contains(x))
        .cloned()
        .collect();  // [3,4]
    
    // Difference (set1 - set2)
    let difference: Vec<i32> = set1.iter()
        .filter(|&x| !set2.contains(x))
        .cloned()
        .collect();  // [1,2]
}
```

---

## 14. Memory & Performance

```rust
use std::mem;

fn main() {
    // Memory layout
    let v = vec![1, 2, 3, 4, 5];
    println!("Size of Vec on stack: {} bytes", mem::size_of_val(&v));  // 24 bytes
    
    // 24 bytes breakdown:
    // - pointer to heap data: 8 bytes
    // - length: 8 bytes
    // - capacity: 8 bytes
    
    // Heap memory
    let heap_size = v.capacity() * mem::size_of::<i32>();
    println!("Heap allocation: {} bytes", heap_size);  // 5 * 4 = 20 bytes
    
    // Growth factor demonstration
    let mut v = Vec::new();
    let mut last_cap = v.capacity();
    
    for i in 0..100 {
        v.push(i);
        if v.capacity() != last_cap {
            println!("Size: {}, New capacity: {}", v.len(), v.capacity());
            last_cap = v.capacity();
        }
    }
    // Typical output:
    // Size: 1, New capacity: 4
    // Size: 5, New capacity: 8
    // Size: 9, New capacity: 16
    // Size: 17, New capacity: 32
    // Size: 33, New capacity: 64
    // Size: 65, New capacity: 128
    
    // Pre-allocation for performance
    let mut v = Vec::with_capacity(1000);
    let start = std::time::Instant::now();
    for i in 0..1000 {
        v.push(i);
    }
    println!("Pre-allocated time: {:?}", start.elapsed());
    
    // Without pre-allocation
    let mut v = Vec::new();
    let start = std::time::Instant::now();
    for i in 0..1000 {
        v.push(i);
    }
    println!("Normal time: {:?}", start.elapsed());
    
    // Shrinking memory
    let mut v = Vec::with_capacity(1000);
    v.extend(0..10);
    println!("Before shrink: cap={}", v.capacity());  // 1000
    v.shrink_to_fit();
    println!("After shrink: cap={}", v.capacity());   // 10
    
    // Memory leakage (intentional)
    let v = vec![1, 2, 3];
    let ptr = v.as_ptr();
    let len = v.len();
    let cap = v.capacity();
    mem::forget(v);  // Prevent destructor from running
    
    // Now we must manually manage memory
    unsafe {
        // Use ptr...
        // Later, must manually free
        drop(Vec::from_raw_parts(ptr as *mut i32, len, cap));
    }
    
    // Zero-cost abstractions
    // Iterating over vector is as fast as C array
    let v = vec![1, 2, 3, 4, 5];
    
    // Fast iteration
    for &x in &v {
        // Compiles to same as C loop
        println!("{}", x);
    }
    
    // Indexing is bounds-checked (safety cost)
    let x = v[2];  // Includes bounds check
    let x = unsafe { *v.get_unchecked(2) };  // Unsafe, no bounds check
}
```

---

## 15. Common Patterns

```rust
fn main() {
    // Pattern 1: Filter and collect
    let v = vec![1, 2, 3, 4, 5];
    let evens: Vec<i32> = v.into_iter()
        .filter(|&x| x % 2 == 0)
        .collect();
    
    // Pattern 2: Map and collect
    let v = vec![1, 2, 3];
    let doubled: Vec<i32> = v.iter().map(|&x| x * 2).collect();
    
    // Pattern 3: Reduce to single value
    let v = vec![1, 2, 3, 4, 5];
    let sum = v.iter().fold(0, |acc, &x| acc + x);
    
    // Pattern 4: Group by key
    let words = vec!["apple", "banana", "apricot", "cherry", "blueberry"];
    use std::collections::HashMap;
    let mut groups: HashMap<char, Vec<&str>> = HashMap::new();
    for word in words {
        if let Some(first_char) = word.chars().next() {
            groups.entry(first_char).or_default().push(word);
        }
    }
    
    // Pattern 5: Flatten nested vectors
    let nested = vec![vec![1, 2], vec![3, 4], vec![5, 6]];
    let flat: Vec<i32> = nested.into_iter().flatten().collect();
    
    // Pattern 6: Chunk processing
    let data = vec![1, 2, 3, 4, 5, 6, 7, 8];
    for chunk in data.chunks(3) {
        println!("Chunk: {:?}", chunk);
        // Process each chunk
    }
    
    // Pattern 7: Window processing (sliding window)
    let data = vec![1, 2, 3, 4, 5];
    for window in data.windows(3) {
        let sum: i32 = window.iter().sum();
        println!("Sum of {:?} = {}", window, sum);
    }
    
    // Pattern 8: Zipping two vectors
    let names = vec!["Alice", "Bob", "Charlie"];
    let scores = vec![95, 87, 92];
    let paired: Vec<(&str, i32)> = names.into_iter()
        .zip(scores.into_iter())
        .collect();
    
    // Pattern 9: Building from condition
    let condition = true;
    let v: Vec<i32> = if condition {
        (0..5).collect()
    } else {
        vec![10, 20, 30]
    };
    
    // Pattern 10: Dynamic dispatch with trait objects
    trait Drawable {
        fn draw(&self);
    }
    
    struct Circle;
    struct Square;
    
    impl Drawable for Circle {
        fn draw(&self) { println!("Circle"); }
    }
    
    impl Drawable for Square {
        fn draw(&self) { println!("Square"); }
    }
    
    let shapes: Vec<Box<dyn Drawable>> = vec![Box::new(Circle), Box::new(Square)];
    for shape in shapes {
        shape.draw();
    }
    
    // Pattern 11: Using with Options
    let v = vec![Some(1), None, Some(2), None, Some(3)];
    let filtered: Vec<i32> = v.into_iter().flatten().collect();  // [1,2,3]
    
    // Pattern 12: Using with Results
    let results: Vec<Result<i32, &str>> = vec![Ok(1), Err("fail"), Ok(2)];
    let successes: Vec<i32> = results.into_iter()
        .filter_map(Result::ok)
        .collect();  // [1,2]
    
    // Pattern 13: Parallel processing with rayon
    // use rayon::prelude::*;
    // let v = vec![1, 2, 3, 4, 5];
    // let sum: i32 = v.par_iter().sum();  // Parallel sum
}
```

---

## 16. Vector of Custom Types

```rust
#[derive(Debug, Clone, PartialEq)]
struct Person {
    name: String,
    age: u32,
}

impl Person {
    fn new(name: &str, age: u32) -> Self {
        Person {
            name: name.to_string(),
            age,
        }
    }
}

fn main() {
    // Create vector of custom types
    let mut people = vec![
        Person::new("Alice", 30),
        Person::new("Bob", 25),
        Person::new("Charlie", 35),
    ];
    
    // Add more
    people.push(Person::new("David", 28));
    
    // Access
    let first = &people[0];
    println!("First: {} ({})", first.name, first.age);
    
    // Modify
    if let Some(person) = people.get_mut(1) {
        person.age = 26;
    }
    
    // Find by property
    let found = people.iter()
        .find(|&p| p.name == "Charlie");
    
    // Sort by age
    people.sort_by(|a, b| a.age.cmp(&b.age));
    
    // Sort by name
    people.sort_by(|a, b| a.name.cmp(&b.name));
    
    // Filter
    let adults: Vec<&Person> = people.iter()
        .filter(|&p| p.age >= 18)
        .collect();
    
    // Map to different type
    let names: Vec<String> = people.iter()
        .map(|p| p.name.clone())
        .collect();
    
    // Group by age range
    let mut groups: std::collections::HashMap<&str, Vec<&Person>> = std::collections::HashMap::new();
    for person in &people {
        let range = if person.age < 20 {
            "teen"
        } else if person.age < 30 {
            "twenties"
        } else if person.age < 40 {
            "thirties"
        } else {
            "forties+"
        };
        groups.entry(range).or_default().push(person);
    }
    
    // Custom comparisons
    people.sort_by(|a, b| {
        a.name.len().cmp(&b.name.len())
            .then_with(|| a.age.cmp(&b.age))
    });
    
    // Check if all satisfy condition
    let all_adults = people.iter().all(|p| p.age >= 18);
    
    // Update all
    for person in &mut people {
        person.age += 1;
    }
    
    // Remove by condition
    people.retain(|p| p.age < 100);
    
    // Convert to different structure
    let name_age_pairs: Vec<(&str, u32)> = people.iter()
        .map(|p| (p.name.as_str(), p.age))
        .collect();
    
    // Custom data structure operations
    impl Person {
        fn is_senior(&self) -> bool {
            self.age >= 60
        }
        
        fn can_drink(&self) -> bool {
            self.age >= 21
        }
    }
    
    // Use custom methods
    let seniors: Vec<&Person> = people.iter()
        .filter(|p| p.is_senior())
        .collect();
    
    println!("People: {:?}", people);
}
```

---

## 17. Specialized Vectors

```rust
use std::collections::VecDeque;

fn main() {
    // VecDeque (double-ended queue)
    let mut deque = VecDeque::new();
    deque.push_back(1);
    deque.push_front(0);
    deque.push_back(2);
    
    // Efficient pop from both ends
    let first = deque.pop_front();  // Some(0)
    let last = deque.pop_back();    // Some(2)
    
    // Convert to Vec
    let vec: Vec<i32> = deque.into_iter().collect();
    
    // SmallVec (optimized for small vectors, on stack)
    // use smallvec::{smallvec, SmallVec};
    // let mut small: SmallVec<[i32; 4]> = smallvec![1, 2, 3];
    // // Stored on stack if <= 4 elements, heap otherwise
    // small.push(4);
    // small.push(5);  // Moves to heap
    
    // BitVec (space-efficient for booleans)
    // use bitvec::prelude::*;
    // let mut bits = bitvec![0; 100];  // 100 bits, ~13 bytes
    // bits.set(42, true);
    
    // SortedVec (maintains sorted order)
    // use sorted_vec::SortedVec;
    // let mut sorted = SortedVec::new();
    // sorted.insert(5);
    // sorted.insert(1);
    // sorted.insert(3);  // Always sorted: [1,3,5]
    
    // Persistent vectors (immutable, shared structure)
    // use im::Vector;
    // let v1 = Vector::new();
    // let v2 = v1.push_back(1);
    // let v3 = v2.push_back(2);
    // // v1 and v2 still exist and share structure
    
    // Specialized numeric vectors
    // use ndarray::Array1;
    // let arr = Array1::from_vec(vec![1, 2, 3, 4]);
    // // Efficient numeric operations
    // let doubled = &arr * 2;
    
    // Sparse vectors (for mostly-zero data)
    // use sprs::{CsVec, CsMat};
    // let sparse = CsVec::new(1000, vec![10, 20, 30], vec![1.5, 2.5, 3.5]);
    
    // Ring buffer (circular buffer)
    struct RingBuffer<T> {
        buffer: Vec<Option<T>>,
        capacity: usize,
        head: usize,
        tail: usize,
    }
    
    impl<T> RingBuffer<T> {
        fn new(capacity: usize) -> Self {
            let mut buffer = Vec::with_capacity(capacity);
            buffer.resize_with(capacity, || None);
            RingBuffer {
                buffer,
                capacity,
                head: 0,
                tail: 0,
            }
        }
        
        fn push(&mut self, item: T) {
            self.buffer[self.head] = Some(item);
            self.head = (self.head + 1) % self.capacity;
            if self.head == self.tail {
                self.tail = (self.tail + 1) % self.capacity;  // Overwrite oldest
            }
        }
        
        fn pop(&mut self) -> Option<T> {
            if self.head == self.tail {
                None  // Empty
            } else {
                let item = self.buffer[self.tail].take();
                self.tail = (self.tail + 1) % self.capacity;
                item
            }
        }
    }
    
    // Use ring buffer
    let mut ring = RingBuffer::new(3);
    ring.push(1);
    ring.push(2);
    ring.push(3);
    ring.push(4);  // Overwrites 1
    
    assert_eq!(ring.pop(), Some(2));
    assert_eq!(ring.pop(), Some(3));
    assert_eq!(ring.pop(), Some(4));
    assert_eq!(ring.pop(), None);
}
```

---

## Quick Reference Table

| Category | Method | Description |
|----------|--------|-------------|
| **Creation** | `Vec::new()` | Empty vector |
| | `vec![x; n]` | n copies of x |
| | `Vec::with_capacity(n)` | Pre-allocate space |
| | `from_iter()` | From iterator |
| **Adding** | `push()` | Add to end |
| | `insert()` | Insert at index |
| | `extend()` | Add multiple |
| | `append()` | Move from another Vec |
| **Removing** | `pop()` | Remove last |
| | `remove()` | Remove at index |
| | `swap_remove()` | Remove (fast, unordered) |
| | `clear()` | Remove all |
| | `truncate()` | Keep first n |
| | `drain()` | Remove range |
| | `retain()` | Keep matching |
| **Accessing** | `[i]` | Index (panics) |
| | `get(i)` | Safe index (Option) |
| | `first()`, `last()` | First/last element |
| | `split_at()` | Split into two slices |
| **Searching** | `contains()` | Check if contains |
| | `iter().position()` | Find index |
| | `binary_search()` | Fast search (sorted) |
| | `iter().find()` | Find element |
| **Sorting** | `sort()` | Sort ascending |
| | `sort_by()` | Custom sort |
| | `sort_by_key()` | Sort by key |
| | `reverse()` | Reverse order |
| | `rotate_left()` | Rotate |
| **Size** | `len()` | Number of elements |
| | `capacity()` | Allocated space |
| | `is_empty()` | Check empty |
| | `reserve()` | Pre-allocate |
| | `shrink_to_fit()` | Reduce capacity |
| **Conversion** | `into_boxed_slice()` | To Box<[T]> |
| | `as_slice()` | To &[T] |
| | `as_mut_slice()` | To &mut [T] |
| | `into_iter()` | To iterator |
| **Comparison** | `==`, `!=` | Equality |
| | `<`, `>`, `<=`, `>=` | Lexicographic order |
| | `cmp()` | Full comparison |

**Performance Characteristics:**
- Push/pop: O(1) amortized
- Insert/remove at front: O(n)
- Indexing: O(1)
- Contains (unsorted): O(n)
- Binary search (sorted): O(log n)
- Sort: O(n log n)
- Iteration: O(n)

**Memory:**
- Each Vec uses 3 words on stack (ptr, len, cap)
- Elements stored contiguously on heap
- Growth factor: typically doubles capacity
- Cache-friendly for iteration