// -*- C++ -*-

// EXTERNAL DEPENDENCIES
// =============================================================================
#include "cmake_tutorial/cmake_tutorial.hpp"
#include "cmake_tutorial/ct_helper.hpp"
#include <string>
#include <typeinfo>
#include <iostream>


// PUBLIC
// =============================================================================
template <typename T>
CmakeTutorial<T>::CmakeTutorial()
    : value()
{
    ct_helper::announce<T>(__func__);
    announce<T>("EMPTY CTOR");
}

template <typename T>
CmakeTutorial<T>::CmakeTutorial(const T &init)
    : value(init)
{
    ct_helper::announce<T>(__func__, init);
    announce<T>("NON-EMPTY CTOR");
}

template <typename T>
CmakeTutorial<T>::~CmakeTutorial()
{
    ct_helper::announce<T>(__func__);
    announce<T>("DTOR");
}

template <typename T>
inline T
CmakeTutorial<T>::get() const
{
    ct_helper::announce<T>(__func__);
    return value;
}

template <typename T>
inline void
CmakeTutorial<T>::set(const T &input)
{
    ct_helper::announce<T>(__func__, input);
    value = input;
}

template <typename T>
template <typename ...Args>
inline T
CmakeTutorial<T>::sum(const Args &...args) const
{
    ct_helper::announce<T>(__func__, args...);
    return do_sum(args...);
}


// PRIVATE
// =============================================================================
template <typename T>
const std::string CmakeTutorial<T>::type_name(typeid(T).name());


template <typename T>
inline T
CmakeTutorial<T>::do_sum() const
{
    return get();
}

template <typename T>
template <typename ...Args>
inline T
CmakeTutorial<T>::do_sum(const T &next,
                         const Args &...rem_args) const
{
    return next + do_sum(rem_args...);
}


// Friend Functions
// =============================================================================
template <typename T, typename ...Args>
void
announce(const std::string &msg,
         const Args &...args)
{
    std::cout <<   "CmakeTutorial::announce:  " << msg
              << "\nCmakeTutorial::type_name: " << CmakeTutorial<T>::type_name
              << std::endl;
}

template <typename T>
void
show_serial_number(const CmakeTutorial<T> &ct)
{
    std::cout << "serial number for ct: " << ct.serial_number() << std::endl;
}
