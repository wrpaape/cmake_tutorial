#ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP
#define CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP

// EXTERNAL DEPENDENCIES
// =============================================================================
#include "cmake_tutorial/cmake_tutorial_base.hpp"
#include "cmake_tutorial/ct_helper.hpp"
#include <string>


template <typename T>
class CmakeTutorial : public CmakeTutorialBase
{
    // cmake_tutorial/ct_helper.ipp
    template <typename T, typename ...Args>
    friend void ct_helper::announce(const std::string &func_name,
                                    const Args &...args);

    // cmake_tutorial/cmake_tutorial.cpp
    template <typename T, typename ...Args>
    friend void announce(const std::string &msg,
                         const Args &...args);
    template <typename T>
    friend void show_serial_number(const CmakeTutorial<T> &ct);


    // cmake_tutorial/test/test_cmake_tutorial.cpp
    template <typename T>
    friend void test_cmake_tutorial(const T &init_val,
                                    const T &set_val,
                                    const T &...sum_vals);

    // cmake_tutorial/cmake_tutorial.ipp
public:
    CmakeTutorial();
    CmakeTutorial(const T &init);
    ~CmakeTutorial();
    T get() const;
    void set(const T &input);
    T sum(const T &...args) const;

private:
    static const std::string type_name;
    T value;
    T do_sum();
    T do_sum(const T &next,
             const T &...rem_args);
}

#include "cmake_tutorial/cmake_tutorial.ipp"

#endif // ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP
