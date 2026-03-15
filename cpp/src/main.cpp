#include <iostream>
#include <sstream>

#define collatz(x) x % 2 == 0 ? x / 2 : 3 * x + 1

std::string collatzSequence(int x) {
  std::stringstream ss;
  ss << x << ": ";
  for (int i = x; i != 1; i = collatz(i))
    ss << i << ", ";
  ss << "1";
  return ss.str();
}

int main() {
  for (int i = 1; i <= 10000; i++)
    std::cout << collatzSequence(i) << std::endl;
  return 0;
}
