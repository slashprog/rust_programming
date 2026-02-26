// Compiler can infer lifetimes in common patterns

// Rule 1: Each input reference gets its own lifetime
// Rule 2: If there's one input lifetime, output gets that lifetime
// Rule 3: If &self input, output gets self's lifetime

// Examples - what compiler sees:

// 1. No elision (Rule 2 applies)
fn first_word(s: &str) -> &str
// becomes:
fn first_word<'a>(s: &'a str) -> &'a str

// 2. Multiple inputs (Rule 1)
fn compare(s1: &str, s2: &str) -> bool
// becomes:
fn compare<'a, 'b>(s1: &'a str, s2: &'b str) -> bool

// 3. Methods (Rule 3)
impl<'a> ImportantExcerpt<'a> {
    fn announce(&self, announcement: &str) -> &str
    // becomes:
    fn announce<'b>(&'a self, announcement: &'b str) -> &'a str
}

// 4. No output references - no elision needed
fn take_and_give(s: &str) -> String
// lifetime not needed - returns owned value
