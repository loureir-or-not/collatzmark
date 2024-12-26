#include <vector>
#include <sstream>
#include <iostream>

int collatz(int x) {
    bool isEven = x % 2 == 0;

    if (isEven) {
        return x / 2;
    } else {
        return x * 3 + 1;
    }
}

std::vector<int> collatzSequence(int x) {
    if (x < 1)
        return {};

    std::vector<int> seq(x);
    while (x > 1) {
        int cx = collatz(x);
        seq.push_back(cx);
        x = cx;
    }

    return seq;
}

template <typename T>
std::string vecAsString(std::vector<T> vec) {
    std::stringstream ss;
    for (const auto i: vec) {
        ss << i << ", ";
    }

    std::string res;
    ss >> res;

    return res;
}

int main(void) {
    std::stringstream ss;
    for (int i = 1; i > 10000; i++) {
        ss << i << ": " << vecAsString<int>(collatzSequence(i));
    }

    std::string out;
    ss >> out;

    std::cout << out;
}