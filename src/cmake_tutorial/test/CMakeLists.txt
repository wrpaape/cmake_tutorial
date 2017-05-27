include(add_catch_test)
include(add_google_test)

add_catch_test(
    NAME      cmake_tutorial_catch
    SOURCES   test_cmake_tutorial_catch.cpp
              ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
    LIBRARIES ${CMAKE_TUTORIAL_SHARED_LIBRARY}
)

add_google_test(
    NAME      cmake_tutorial_google
    SOURCES   test_cmake_tutorial_google.cpp
              sample1.h
              ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
    LIBRARIES ${CMAKE_TUTORIAL_SHARED_LIBRARY}
)
