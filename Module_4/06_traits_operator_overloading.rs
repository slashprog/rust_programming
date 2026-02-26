use std::ops;

// Define a complex number type
#[derive(Debug, Clone, Copy)]
struct Complex {
    real: f64,
    imag: f64,
}

// Overload + operator
impl ops::Add for Complex {
    type Output = Complex;
    
    fn add(self, other: Complex) -> Complex {
        Complex {
            real: self.real + other.real,
            imag: self.imag + other.imag,
        }
    }
}

// Overload * operator
impl ops::Mul for Complex {
    type Output = Complex;
    
    fn mul(self, other: Complex) -> Complex {
        Complex {
            real: self.real * other.real - self.imag * other.imag,
            imag: self.real * other.imag + self.imag * other.real,
        }
    }
}

// Overload += operator
impl ops::AddAssign for Complex {
    fn add_assign(&mut self, other: Complex) {
        *self = *self + other;
    }
}

fn main() {
    let c1 = Complex { real: 1.0, imag: 2.0 };
    let c2 = Complex { real: 3.0, imag: 4.0 };
    
    let sum = c1 + c2;
    println!("{:?}", sum);  // Complex { real: 4.0, imag: 6.0 }
}