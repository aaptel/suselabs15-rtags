#include <iostream>
#include "stack.hpp"


int main()
{
	Stack<int, 10> s;
	
	for (int i = 0; i < s.capacity(); i++)
		s.push(i);

	while (s.size()) {
		std::cout << s.top() << "\n";
		s.pop();
	}

	A a = {1};
	B b = {2};

	int x = a.foo_bar + b.foo_bar;
	
	Stack<A, 42> sa;
	x = sa.top().foo_bar;
	
	return 0;
}
