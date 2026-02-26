use std::ops::*;

// Full list of overridable operators
trait Add<Rhs = Self>       // a + b
trait Sub<Rhs = Self>       // a - b
trait Mul<Rhs = Self>       // a * b
trait Div<Rhs = Self>       // a / b
trait Rem<Rhs = Self>       // a % b
trait Neg                   // -a (unary)
trait Not                   // !a (unary)
trait BitAnd<Rhs = Self>    // a & b
trait BitOr<Rhs = Self>     // a | b
trait BitXor<Rhs = Self>    // a ^ b
trait Shl<Rhs = Self>       // a << b
trait Shr<Rhs = Self>       // a >> b
trait Index<Idx>            // a[b]
trait IndexMut<Idx>         // a[b] = c
trait Deref                  // *a
trait DerefMut               // *a mut
trait Fn, FnMut, FnOnce      // a()

// Example: Custom indexing
struct Matrix {
    data: [[f64; 3]; 3],
}

impl ops::Index<(usize, usize)> for Matrix {
    type Output = f64;
    
    fn index(&self, (row, col): (usize, usize)) -> &f64 {
        &self.data[row][col]
    }
}

fn main() {
    let m = Matrix { data: [[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]] };
    println!("{}", m[(1, 1)]);  // 5.0
}