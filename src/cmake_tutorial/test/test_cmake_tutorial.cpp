#include "cmake_tutorial/cmake_tutorial.h"

using std::cout, std::endl;

template <typename T>
void
test_cmake_tutorial(const T &init_val,
                    const T &set_val,
                    const T &...sum_vals)
{
    T result;

    cout << "initializing value to: " << init_val;

    CmakeTutorial ct(init_val);

    result = ct.get();

    cout << "expected: " << init_val
         << "got:      " << ct.get() << endl;

    cout << "setting value to: " << set_val;

    ct.set(set_val);

    cout << "expected: " << set_val
         << "got:      " << ct.get() << endl;

    cout << "summing values" << set_val << endl;

    cout << "expected: " << ct.do_sum(sum_vals...)
         << "got:      " << ct.sum(sum_vals...) << endl;

}


int
main()
{
    test_cmake_tutorial(1, 2, 3, 4, 5, 6);
    test_cmake_tutorial(1.0, 2.0, 3.0, 4.0, 5.0, 6.0);
    test_cmake_tutorial(1.0, 2.0, 3f, 4, 5ULL, 6.0);
    return 0;
}
