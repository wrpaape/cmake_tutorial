include(add_catch_test)

add_catch_test(
    NAME      cmake_tutorial_catch
    SOURCES   test_cmake_tutorial_catch.cpp
              ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
    LIBRARIES ${CMAKE_TUTORIAL_SHARED_LIBRARY}
)
