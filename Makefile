# Makefile

# Compiler
CXX = g++

# Compiler Flags
CXXFLAGS = -Wall -Wextra -std=c++17 -g

# Targets
TARGET = test_furniture
OBJECTS = main.o Furniture.o

# Default target
all: $(TARGET)

# Link the executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Compile main.cpp to main.o
main.o: main.cpp Furniture.h
	$(CXX) $(CXXFLAGS) -c main.cpp

# Compile Furniture.cpp to Furniture.o
Furniture.o: Furniture.cpp Furniture.h
	$(CXX) $(CXXFLAGS) -c Furniture.cpp

# Clean up build files
clean:
	rm -f $(TARGET) $(OBJECTS)

# Phony targets
.PHONY: all clean
