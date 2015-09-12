CXXFLAGS = -Wall -Wno-sign-compare -std=c++11

all: testprog

testprog: testprog.o
	$(CXX) $(LDFLAGS) $^ -o $@

testprog.o: testprog.cpp stack.hpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o testprog

.PHONY: clean
