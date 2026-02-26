// Associated types - placeholder type that implementor specifies
trait Iterator {
    type Item;  // Associated type
    
    fn next(&mut self) -> Option<Self::Item>;
}

// Implementation for a concrete iterator
struct Counter {
    count: u32,
}

impl Iterator for Counter {
    type Item = u32;  // Specify the associated type
    
    fn next(&mut self) -> Option<Self::Item> {
        if self.count < 5 {
            self.count += 1;
            Some(self.count)
        } else {
            None
        }
    }
}

// Generic function using associated type
fn sum_iterator<I: Iterator<Item = u32>>(iter: &mut I) -> u32 {
    let mut total = 0;
    while let Some(value) = iter.next() {
        total += value;
    }
    total
}

// Associated types vs generics:
// - Generics: multiple implementations possible (impl Iterator<String>)
// - Associated types: one implementation per type
