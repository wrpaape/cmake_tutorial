#include "cmake_tutorial/cmake_tutorial.hpp"
#include <iostream>

using std::cout;
using std::endl;

int
main()
{
    cout << "HELLO WORLD FROM " << __FILE__ << endl;

    CmakeTutorial<double> ct(3.14);

    cout << "got: " << ct.get() << endl;

    ct.set(1.11);

    cout << "got: " << ct.get() << endl;

    cout << "sum: " << ct.sum(2.22, 3.33, 3.33) << endl;

    show_serial_number(ct);

    cout << "BYE!" << endl;

    return 0;
}
