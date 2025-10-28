CXX := g++
CXXFLAGS := -std=c++17 -Iinclude -Wall -Wextra -O2

SRC_DIR := src
TEST_DIR := test
BIN_DIR := bin

SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.o,$(SRCS))
TARGET := $(BIN_DIR)/app.exe
TEST_TARGET := $(BIN_DIR)/testeRegressivo.exe
TEST_SRCS := $(wildcard $(TEST_DIR)/*.cpp)

.PHONY: all test clean dirs

all: dirs $(TARGET)

dirs:
	@mkdir -p $(BIN_DIR)

# Compila cada .cpp em .o dentro de bin/
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Gera o executável principal
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Compila e executa os testes
test: dirs $(TEST_TARGET)
	@echo "Executando testes..."
	@$(TEST_TARGET)

# Gera o executável de testes
# OBS: aqui compilamos apenas bib.cpp + main_test.cpp, sem main.cpp
$(TEST_TARGET): $(TEST_SRCS) $(SRC_DIR)/bib.cpp
	$(CXX) $(CXXFLAGS) $(TEST_SRCS) $(SRC_DIR)/bib.cpp -o $(TEST_TARGET)

clean:
	rm -rf $(BIN_DIR)/*.o $(TARGET) $(TEST_TARGET)


