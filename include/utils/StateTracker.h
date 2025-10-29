#ifndef STATE_TRACKER_H
#define STATE_TRACKER_H

#include "Types.h"

template <typename Container, size_t s_amount>
class StateTracker
{
    static_assert(s_amount > 0, "Amount must be greater than 0");

private:
    static inline const size_t s_statesAmount = (s_amount - 1) / (std::numeric_limits<Container>::bits) + 1;
    Container m_states[s_statesAmount];

public:
    void set(size_t index, bool value)
    {
        size_t containerIndex = index / (std::numeric_limits<Container>::bits);
        size_t bitIndex = index % (std::numeric_limits<Container>::bits);
        if (value)
            m_states[containerIndex] |= (1 << bitIndex);
        else
            m_states[containerIndex] &= ~(1 << bitIndex);
    }
    void set(size_t index)
    {
        size_t containerIndex = index / (std::numeric_limits<Container>::bits);
        size_t bitIndex = index % (std::numeric_limits<Container>::bits);
        m_states[containerIndex] |= (1 << bitIndex);
    }
    void clear(size_t index)
    {
        size_t containerIndex = index / (std::numeric_limits<Container>::bits);
        size_t bitIndex = index % (std::numeric_limits<Container>::bits);
        m_states[containerIndex] &= ~(1 << bitIndex);
    }
    bool get(size_t index)
    {
        size_t containerIndex = index / (std::numeric_limits<Container>::bits);
        size_t bitIndex = index % (std::numeric_limits<Container>::bits);
        return m_states[containerIndex] & (1 << bitIndex);
    }
};

#endif // STATE_TRACKER_H