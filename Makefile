CXX=c++

SOURCES=src/Add.cpp src/Main.cpp
EXECUTABLE=src/Main
OBJECTS=$(SOURCES:.cpp=.o)
INCDIR=./include
CXXFLAGS=-c -Wall -I$(INCDIR)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	@echo "Linking $(EXECUTABLE)"; $(CXX) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	@echo "Compiling $<..."; $(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -rf ./*.o ./src/*.o $(EXECUTABLE) 
