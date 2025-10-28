# Meu Projeto C++ (NomeSignificativo)

## Descrição
Repositório de exemplo para disciplina/prática de Git e GitFlow. Contém:

- Estrutura mínima para projeto C++
- Makefile simples que compila fontes em `src/` e coloca binários em `bin/`
- Testes em `test/`
- Demonstração de fluxo Git: branches `master`, `develop`, `staging`
- Duas funcionalidades implementadas com TDD: `calcularFatorial` e `calcularFibonacci`

## Funcionalidades
1. **Calcular Fatorial**: calcula o fatorial de um número inteiro positivo.  
2. **Calcular Fibonacci**: calcula o valor de Fibonacci de um número inteiro.  

## Como compilar
1. `make all` — compila aplicação principal (gera `bin/app.exe`)  
2. `make test` — compila e executa testes (gera `bin/testeRegressivo.exe`)  
3. `make clean` — remove artefatos de build  

## Estrutura do Projeto
- `src/` : código fonte (.cpp, .hpp)  
- `include/` : headers públicos (opcional)  
- `bin/` : binários gerados (ignorados pelo Git)  
- `test/` : arquivos de teste  
- `doc/` : documentação  

## Git & GitFlow
Branches principais (conforme tutorial TerraLAB):

- `master` : versão estável / release  
- `staging`: pré-release / aceitação  
- `develop`: desenvolvimento contínuo  

Issue boards recomendados:

- `sprint backlog`  
- `doing`  
- `waiting acceptance`  
- `done`  

## Como rodar localmente
```sh
# Build da aplicação
make all

# Executar a aplicação
./bin/app.exe

# Compilar e rodar testes
make test
./bin/testeRegressivo.exe
