# Meu Projeto C++ (NomeSignificativo)

Descrição
---------
Repositório de exemplo para disciplina/prática de Git e GitFlow. Contém:
- Estrutura mínima para projeto C++
- Makefile simples que compila fontes em `src/` e coloca binários em `bin/`
- Testes em `test/`
- Demonstração de fluxo Git: branches `master`, `develop`, `staging`
- Duas funcionalidades implementadas com TDD: `calcularFatorial` e `calcularFibonacci`

Como compilar
-------------
1. `make all` — compila aplicação principal (gera `bin/app.exe`)
2. `make test` — compila e executa testes (gera `bin/testeRegressivo.exe`)
3. `make clean` — remove artefatos de build

Estrutura
---------
- `src/` : código fonte (.cpp, .hpp)
- `include/` : headers públicos (opcional)
- `bin/` : binários gerados (ignorados no Git)
- `test/` : arquivos de teste
- `doc/` : documentação

Git & GitFlow
-------------
Branches principais (conforme tutorial TerraLAB):
- `master` : versão estável / release
- `staging`: pré-release / aceitação
- `develop`: desenvolvimento contínuo

Issue boards recomendados:
- `sprint backlog`
- `doing`
- `waiting acceptance`
- `done`

Como rodar localmente
---------------------
```sh
# build app
make all

# run
./bin/app.exe

# compilar e rodar testes
make test
./bin/testeRegressivo.exe
