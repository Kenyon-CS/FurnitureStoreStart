# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Target executable
TARGET = furniture_test

# Object files
OBJECTS = main.o Furniture.o Chair.o Table.o Sofa.o

# Default target
all: $(TARGET)

# Build the target
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Compile main.cpp
main.o: main.cpp Furniture.h Chair.h Table.h Sofa.h
	$(CXX) $(CXXFLAGS) -c main.cpp

# Compile Furniture.cpp
Furniture.o: Furniture.cpp Furniture.h
	$(CXX) $(CXXFLAGS) -c Furniture.cpp

# Compile Chair.cpp
Chair.o: Chair.cpp Chair.h Furniture.h
	$(CXX) $(CXXFLAGS) -c Chair.cpp

# Compile Table.cpp
Table.o: Table.cpp Table.h Furniture.h
	$(CXX) $(CXXFLAGS) -c Table.cpp

# Compile Sofa.cpp
Sofa.o: Sofa.cpp Sofa.h Furniture.h
	$(CXX) $(CXXFLAGS) -c Sofa.cpp

# Clean up object files and executable
clean:
	rm -f $(OBJECTS) $(TARGET)
