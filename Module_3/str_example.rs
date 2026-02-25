fn calc_len(s: &str) -> usize {
    s.len()
}

fn calc_sum(a: &[i32]) -> i32 {
    a.iter().sum()
}

fn main() {
    let s = String::from("hello");
  
    println!("Length of '{}' is {}", s, calc_len(&s));  // s borrowed, can use after

    println!("calc_len of 'test data' is {}", calc_len("test data"));
    // println!("calc_len of 'test data' is {}", calc_len(&String::from("test data")));

    let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 23, 44, 55];
    println!("Sum of {:?} is {}", arr, calc_sum(&arr[1..5]));  // arr
}