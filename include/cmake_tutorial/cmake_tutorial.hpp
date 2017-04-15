#ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP
#define CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP

// EXTERNAL DEPENDENCIES
// =============================================================================
#include "cmake_tutorial/cmake_tutorial_base.hpp"
#include <string>

template <typename T>
class CmakeTutorial;


// Friend Functions
// =============================================================================
namespace ct_helper {
    template <typename T, typename ...Args>
    void announce(const std::string &func_name,
                  const Args &...args);
} // ct_helper

template <typename T, typename ...Args>
void announce(const std::string &msg,
              const Args &...args);

template <typename T>
void show_serial_number(const CmakeTutorial<T> &ct);


// Interface
// =============================================================================
template <typename T>
class CmakeTutorial : public CmakeTutorialBase
{
    // cmake_tutorial/ct_helper.ipp
    template <typename U, typename ...Args>
    friend void ct_helper::announce(const std::string &func_name,
                                    const Args &...args);

    // cmake_tutorial/cmake_tutorial.cpp
    template <typename U, typename ...Args>
    friend void announce(const std::string &msg,
                         const Args &...args);

    friend void show_serial_number<T>(const CmakeTutorial &ct);

    // cmake_tutorial/test/test_cmake_tutorial.cpp
    template <typename U, typename ...Args>
    friend void test_cmake_tutorial(const U &init_val,
                                    const U &set_val,
                                    const Args &...sum_vals);
    // PARTIAL SPECIALIZATION NOT ALLOWED
    /* template <typename ...Args> */
    /* friend void test_cmake_tutorial<T>(const T &init_val, */
    /*                                    const T &set_val, */
    /*                                    const Args &...sum_vals); */

    // cmake_tutorial/cmake_tutorial.ipp
public:
    CmakeTutorial();
    CmakeTutorial(const T &init);
    ~CmakeTutorial();
    T get() const;
    void set(const T &input);

    template <typename ...Args>
    T sum(const Args &...args) const;

private:
    static const std::string type_name;
    T value;
    T do_sum() const;
    template <typename ...Args>
    T do_sum(const T &next,
             const Args &...rem_args) const;
};

#include "cmake_tutorial/cmake_tutorial.ipp"

#endif // ifndef CMAKE_TUTORIAL_CMAKE_TUTORIAL_CMAKE_TUTORIAL_HPP
