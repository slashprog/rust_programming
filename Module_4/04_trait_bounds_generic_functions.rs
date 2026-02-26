// 1. impl Trait syntax (simple)
fn notify(item: &impl Summarizable) {
    println!("Breaking: {}", item.summary());
}

// 2. Trait bound syntax (equivalent)
fn notify<T: Summarizable>(item: &T) {
    println!("Breaking: {}", item.summary());
}

// 3. Multiple trait bounds
fn notify_debug<T: Summarizable + std::fmt::Debug>(item: &T) {
    println!("{:?}", item);
    println!("{}", item.summary());
}

// 4. where clause (cleaner for complex bounds)
fn complex_function<T, U>(t: &T, u: &U) -> String
where
    T: Summarizable + Clone,
    U: Summarizable + std::fmt::Debug,
{
    let t_clone = t.clone();
    format!("{} - {:?}", t_clone.summary(), u)
}

// 5. Return with impl Trait
fn returns_summarizable() -> impl Summarizable {
    Tweet {
        username: String::from("rustlang"),
        content: String::from("Traits are awesome!"),
    }
}