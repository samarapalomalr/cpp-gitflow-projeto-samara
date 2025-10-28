#include <iostream>
#include <cassert>
#include "bib.hpp"

int main() {
    // Tests for fatorial
    assert(fatorial(0) == 1);
    assert(fatorial(1) == 1);
    assert(fatorial(5) == 120);
    // boundary small test
    try {
        fatorial(-1);
        // if reached: fail
        std::cerr << "Erro: fatorial(-1) nao lançou excecao\n";
        return 1;
    } catch(...) { /* OK */ }

    // Tests for fibonacci
    assert(fibonacci(0) == 0);
    assert(fibonacci(1) == 1);
    assert(fibonacci(2) == 1);
    assert(fibonacci(7) == 13);

    std::cout << "Todos os testes passaram com sucesso!\n";
    return 0;
}
