#include "Types.h"
#include "Utils.h"

namespace Utils
{
    template <typename T, size_t N>
    class Array
    {
    private:
        static_assert(N > 0, "Array size must be greater than 0");
        T m_data[N];

    public:
        Array() = default;

        Array(const Array &) = default;
        Array(Array &&) = default;

        Array &operator=(const Array &) = default;
        Array &operator=(Array &&) = default;

        constexpr size_t size() const { return N; }
        constexpr bool empty() const { return N == 0; }

        T &operator[](size_t i) { return m_data[i]; }
        T *data() { return m_data; }
        T *begin() { return m_data; }
        T *end() { return m_data + N; }

        const T &operator[](size_t i) const { return m_data[i]; }
        const T *data() const { return m_data; }
        const T *begin() const { return m_data; }
        const T *end() const { return m_data + N; }
    };
}