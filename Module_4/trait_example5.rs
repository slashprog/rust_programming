use std::ops::Index;

struct Matrix {
    data: [[i32; 3]; 3],
}

impl Index<(usize, usize)> for Matrix {
    type Output = i32;

    fn index(&self, index: (usize, usize)) -> &Self::Output {
        let (row, col) = index;
        &self.data[row][col]
    }
}

fn main() {
    // let a = [i32; 10];  // int a[10]

    let matrix = Matrix {
        data: [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9],
        ],
    };

    println!("Element at (0, 0): {}", matrix[(0, 0)]);
    println!("Element at (1, 2): {}", matrix[(1, 2)]);

    
}