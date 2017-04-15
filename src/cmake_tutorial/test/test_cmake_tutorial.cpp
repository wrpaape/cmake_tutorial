#include "cmake_tutorial/cmake_tutorial.hpp"

using std::cout;
using std::endl;

template<typename T, typename ...Args>
void
test_cmake_tutorial(const T &init_val,
                    const T &set_val,
                    const Args &...sum_vals)
{
    T expected, got;

    cout << "initializing value to: " << init_val << endl;

    CmakeTutorial<T> ct(init_val);

    got = ct.get();

    cout <<   "expected: " << init_val
         << "\ngot:      " << got << endl;

    cout << "setting value to: " << set_val << endl;

    ct.set(set_val);

    got = ct.get();

    cout <<   "expected: " << set_val
         << "\ngot:      " << got << endl;

    cout << "summing values" << set_val << endl;

    expected = ct.do_sum(sum_vals...);
    got      = ct.sum(sum_vals...);

    cout <<   "expected: " << expected
         << "\ngot:      " << got << endl;

}


int
main()
{
    test_cmake_tutorial(1, 2, 3, 4, 5, 6);
    test_cmake_tutorial(1.0, 2.0, 3.0, 4.0, 5.0, 6.0);
    test_cmake_tutorial(1.0, 2.0, 3.0f, 4, 5ULL, 6.0);
    return 0;
}
