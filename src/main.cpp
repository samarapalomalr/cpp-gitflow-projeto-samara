#include <iostream>
#include "bib.hpp"

int main() {
    std::cout << "Executando Aplicacao principal\n";
    // exemplo de uso
    long n = 5;
    std::cout << "Fatorial de " << n << " = " << fatorial(n) << "\n";
    std::cout << "Fibonacci de " << n << " = " << fibonacci(n) << "\n";
    return 0;
}


