#include <thread>
#include <iostream>

int counter = 0; // Shared mutable state — danger!

void increment() {
    for (int i = 0; i < 1000000; i++)
        counter++; // RACE CONDITION: read-modify-write is not atomic
}

int main() {
    std::thread t1(increment);
    std::thread t2(increment);
    t1.join(); t2.join();
    // Expected: 2,000,000  Actual: ???
    std::cout << counter << std::endl;
}