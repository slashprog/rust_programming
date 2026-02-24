#include <iostream>
#include <string>

int main() {
    std::string s1 = "hello";
    std::string s2 = s1;  // COPY (deep copy by default)
    
    s1[0] = 'j';  // modifies s1 only
    std::cout << s1 << " " << s2;  // "jello hello"
    
    // Implicit copies EVERYWHERE - easy to accidentally copy!
    auto func = [](std::string s) { /* ... */ };
    func(s1);  // PASSES BY VALUE - COPY!
}
