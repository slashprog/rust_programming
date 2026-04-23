// C++ Example - DATA RACE!
#include <thread>
#include <iostream>

int counter = 0;  // Shared mutable state

void increment() {
    for (int i = 0; i < 1000000; i++) {
        counter++;  // NOT ATOMIC!
    }
}

int main() {
    std::thread t1(increment);
    std::thread t2(increment);
    t1.join(); t2.join();
    
    // Result: ??? Not 2,000,000 (usually)
    std::cout << counter << std::endl;
    // Compiles fine, but UNDEFINED BEHAVIOR!
}
