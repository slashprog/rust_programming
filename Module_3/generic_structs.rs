struct Point<T> {
    x: T,
    y: T,
}

fn main() {
    let point = Point<f64> { x: 3.0, y: 4.0 };
    println!("Point coordinates: ({}, {})", point.x, point.y);

    let point = Point<i32> { x: 10, y: 20 };
    println!("Point coordinates: ({}, {})", point.x, point.y);


}