#include "cmake_tutorial/cmake_tutorial_base.hpp"
#include "cmake_tutorial/cmake_tutorial_config.hpp"
#include <iostream>
#include <limits>
#include <ctime>

typedef CmakeTutorialBase Ctb;

using std::cout;
using std::endl;
using std::numeric_limits;


// Static Data
// -----------------------------------------------------------------------------
// constants
const Ctb::sn_t      Ctb::min_serial_number(numeric_limits<Ctb::sn_t>::min());
const Ctb::sn_t      Ctb::max_serial_number(numeric_limits<Ctb::sn_t>::max());
const Ctb::author_t  Ctb::author(CMAKE_TUTORIAL_AUTHOR);
const Ctb::version_t Ctb::version(CMAKE_TUTORIAL_VERSION);
// stateful
Ctb::engine_t Ctb::engine(time(nullptr)); 
Ctb::dist_t   Ctb::dist(Ctb::min_serial_number, Ctb::max_serial_number);


// Static Methods
// -----------------------------------------------------------------------------
void
Ctb::app_info()
{
    cout <<   "author:  " << author
         << "\nversion: " << version << endl;
}


// Instance Methods
// -----------------------------------------------------------------------------
Ctb::CmakeTutorialBase()
    : sn(Ctb::dist(Ctb::engine))
{
    cout << "constructing CmakeTutorialBase: " << sn << endl;
}

Ctb::~CmakeTutorialBase()
{
    cout << "destroying CmakeTutorialBase: " << sn << endl;
}

Ctb::sn_t
Ctb::serial_number() const
{
    return sn;
}
