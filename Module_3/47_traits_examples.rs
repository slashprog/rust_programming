trait Summary {
    fn summarize(&self) -> String;
}

struct NewsArticle { /* ... */ }
impl Summary for NewsArticle { /* ... */ }

struct Tweet { /* ... */ }
impl Summary for Tweet { /* ... */ }

// 1. Trait as parameter (impl Trait syntax)
fn notify(item: &impl Summary) {
    println!("Breaking news! {}", item.summarize());
}

// 2. Trait bound syntax (same as above)
fn notify<T: Summary>(item: &T) {
    println!("Breaking news! {}", item.summarize());
}

// 3. Multiple trait bounds
fn notify_debug<T: Summary + std::fmt::Debug>(item: &T) {
    println!("{:?}", item);
    println!("{}", item.summarize());
}

// 4. where clause (cleaner for complex bounds)
fn complex_notify<T, U>(t: &T, u: &U) 
where
    T: Summary + Clone,
    U: Summary + std::fmt::Debug,
{
    // ...
}

// 5. Return impl Trait
fn returns_summarizable() -> impl Summary {
    Tweet {
        username: String::from("horse_ebooks"),
        content: String::from("of course, as you probably already know, people"),
        reply: false,
        retweet: false,
    }
}
