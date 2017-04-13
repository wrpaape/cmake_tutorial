#include "cmake_tutorial/cmake_tutorial_base.hpp"
#include "cmake_tutorial/cmake_tutorial_config.hpp"
#include <limits>
#include <ctime>

using CmakeTutorialBase;
using sn_t_limits = std::numeric_limits<sn_t>;
using std::cout, std::endl;

const sn_t min_serial_number(sn_t_limits::min());
const sn_t max_serial_number(sn_t_limits::max());

engine_t engine(time(nullptr)); 
dist_t dist(min_serial_number, max_serial_number);

const author_t author(CMAKE_TUTORIAL_AUTHOR);
const version_t version(CMAKE_TUTORIAL_VERSION);

CmakeTutorialBase()
    : sn(dist(engine))
{
    cout << "constructing CmakeTutorialBase: " << sn << endl;
}

~CmakeTutorialBase()
{
    cout << "destroying CmakeTutorialBase: " << sn << endl;
}

sn_t
serial_number()
{
    return sn;
}

void
app_info()
{
    cout <<   "author:  " << author
         << "\nversion: " << version << endl;
}
