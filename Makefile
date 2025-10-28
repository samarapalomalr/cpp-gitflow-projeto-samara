
---

### Makefile (SIMPLES — Linux/macOS; produz executável em bin/)
```makefile
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

# compile each source into an object in bin/
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# link objects into final executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

# tests: compile test main and link with project sources
test: dirs $(TEST_TARGET)
	@echo "Executando testes..."
	@$(TEST_TARGET)

$(TEST_TARGET): $(TEST_SRCS) $(SRCS)
	$(CXX) $(CXXFLAGS) $(TEST_SRCS) $(SRCS) -o $(TEST_TARGET)

clean:
	rm -rf $(BIN_DIR)/*.o $(TARGET) $(TEST_TARGET)
