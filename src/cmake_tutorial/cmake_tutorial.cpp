#include "cmake_tutorial/cmake_tutorial.hpp"
#include <string>
#include <typeinfo>
#include <iostream>


using std::string, std::cout, std::endl;

template <typename T>
const std::string CmakeTutorial<T>::type_name(typeid(T).name());

template <typename T, typename ...Args>
void
announce(const std::string &msg,
         const Args &...args)
{
    cout << "CmakeTutorial::announce:  " msg
         << "CmakeTutorial::type_name: " CmakeTutorial<T>::type_name << end;
}

template <typename T>
void
show_serial_number(const CmakeTutorial<T> &ct)
{
    cout << "serial_number: " << ct.serial_number();
}
