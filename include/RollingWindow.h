#ifndef ROLLING_WINDOW_H
#define ROLLING_WINDOW_H
#include "Types.h"

template <typename T, size_t s_size>
class RollingWindow
{
private:
    T m_data[s_size];
    size_t m_tail = 0;
    size_t m_head = 0;

public:
    RollingWindow()
    {
        m_tail = 0;
        m_head = 0;
    }

    void pushBack(const T &value = T())
    {
        m_data[m_head] = value;
        m_head = (m_head + 1) % s_size;
        if (m_head == m_tail)
        {
            m_tail = (m_tail + 1) % s_size;
        }
    }

    void popBack()
    {
        if (m_head == m_tail)
            return;

        if (m_head == 0)
        {
            m_head = s_size - 1;
        }
        else
            --m_head;
    }

    void pushFront(const T &value = T())
    {
        m_data[m_tail] = value;
        if (m_tail == 0)
        {
            m_tail = s_size - 1;
            if (m_head == m_tail)
                --m_head;
        }
        else
        {
            --m_tail;
            if (m_head == m_tail)
            {
                if (m_head == 0)
                {
                    m_head = s_size - 1;
                }
                else
                    --m_head;
            }
        }
    }

    void popFront()
    {
        if (m_head == m_tail)
            return;
        m_tail = (m_tail + 1) % s_size;
    }

    T &operator[](size_t index)
    {
        return m_data[(m_tail + index) % s_size];
    }

    T &back()
    {
        return m_data[m_head];
    }

    T &front()
    {
        return m_data[m_tail];
    }

    const T &operator[](size_t index) const
    {
        return m_data[(m_tail + index) % s_size];
    }

    const T &back() const
    {
        return m_data[m_head];
    }

    const T &front() const
    {
        return m_data[m_tail];
    }

    size_t size() const
    {
        return ((m_head + s_size) - m_tail) % s_size;
    }

    size_t capacity() const
    {
        return s_size;
    }

    bool empty() const
    {
        return m_head == m_tail;
    }

    void clear()
    {
        m_tail = 0;
        m_head = 0;
    }
};

#endif // ROLLING_WINDOW_H