#include <iostream>
#include <sstream>

int collatz(int x) {
    if (x % 2 == 0)
        return x / 2;

    return 3 * x + 1;
}

std::string collatzSequence(int x) {
    if (x == 1)
        return "";

    std::stringstream ss;
    std::string res;

    for (int i = collatz(x); i > 1; i = collatz(i))
        ss << i << ',';

    ss << "1";
    ss >> res;
    return res;
}

int main() {
    for (int i = 1; i <= 10000; i++)
        std::cout << i << ": " << collatzSequence(i) << std::endl;

    return 0;
}