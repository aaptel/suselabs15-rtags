#ifndef _STACK_HPP_
#define _STACK_HPP_

#include <cstddef>

template<class T, size_t N>
class Stack
{
public:
	typedef T value_type;
	Stack() : m_top(0)	{}
	void push(const T& e)	{ m_buf[m_top++] = e; }
	void pop()		{ m_buf[--m_top]; }
	void clear()		{ m_top = 0; }
	T top() const		{ return m_buf[m_top-1]; }
	size_t size() const	{ return m_top; }
	constexpr size_t capacity() const { return N; }
	
private:
	T m_buf[N];
	size_t m_top;
};

#endif
