macro_rules! make_vec {
    ($($item:expr),*) => {
        {
            let mut v = Vec::new();
            $(v.push($item);)*
            v
        }
    };
}

fn main() {
    let nums = make_vec![10, 20, 30];
    println!("{:?}", nums);  // [10, 20, 30]
}