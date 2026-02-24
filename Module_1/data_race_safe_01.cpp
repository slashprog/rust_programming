#include <iostream>
#include <thread>
#include <vector>
#include <memory>
#include <mutex>

int main() {
    // Arc = std::shared_ptr with thread-safe reference counting
    // Mutex = std::mutex
    auto counter = std::make_shared<std::mutex>();  // For locking
    auto value = std::make_shared<int>(0);          // The actual value
    
    std::vector<std::thread> handles;
    
    // Spawn 2 threads (like the Rust example)
    for (int i = 0; i < 2; ++i) {
        // Clone the shared_ptrs (equivalent to Arc::clone)
        auto c = counter;
        auto v = value;
        
        handles.push_back(std::thread([c, v]() {
            // Lock the mutex (equivalent to c.lock())
            std::lock_guard<std::mutex> lock(*c);
            *v += 1'000'000;  // C++14 digit separator
        }));
    }
    
    // Join all threads
    for (auto& h : handles) {
        h.join();
    }
    
    // Print result (need to lock to read safely)
    {
        std::lock_guard<std::mutex> lock(*counter);
        std::cout << "Result: " << *value << std::endl;  // Always 2,000,000
    }
    
    return 0;
}