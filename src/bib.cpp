#include "bib.hpp"
#include <stdexcept>

long fatorial(long n) {
    if (n < 0) throw std::invalid_argument("n deve ser >= 0");
    long res = 1;
    for (long i = 2; i <= n; ++i) res *= i;
    return res;
}

long fibonacci(long n) {
    if (n < 0) throw std::invalid_argument("n deve ser >= 0");
    if (n == 0) return 0;
    if (n == 1) return 1;
    long a = 0, b = 1, c;
    for (long i = 2; i <= n; ++i) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}
