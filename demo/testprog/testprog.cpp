#include <iostream>
#include "stack.hpp"

int main()
{
	Stack<int, 10> s;
	
	std::cout << "sizeof(s) = " << sizeof(s)
		  << " = " << sizeof(s.size())
		  << " + " << s.capacity()*sizeof(s.top())
		  << "\n";
	
	for (int i = 0; i < s.capacity(); i++)
		s.push(i);

	while (s.size()) {
		std::cout << s.top() << "\n";
		s.pop();
	}
}
