cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

project(
    cmake_tutorial
    VERSION 0.1.0
    LANGUAGES CXX
)

# cmake options
set(CMAKE_VERBOSE_MAKEFILE on)
set(CMAKE_CXX_STANDARD 14)

# config defines
set(CMAKE_TUTORIAL_VERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR})
set(CMAKE_TUTORIAL_AUTHOR  "\"wrpaape\"")

# global directories
set(PROJECT_SRC_DIR     ${PROJECT_SOURCE_DIR}/src)
set(PROJECT_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
set(PROJECT_TEST_DIR    ${PROJECT_SOURCE_DIR}/test)
set(PROJECT_BIN_DIR     ${PROJECT_SOURCE_DIR}/bin)
set(PROJECT_LIB_DIR     ${PROJECT_SOURCE_DIR}/lib)

# set binary executable output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BIN_DIR})

# test configuration
enable_testing()

set(PROJECT_TEST_BIN_DIR          ${PROJECT_TEST_DIR}/bin)
set(PROJECT_TEST_INCLUDE_DIR      ${PROJECT_TEST_DIR}/include)
set(PROJECT_TEST_INCLUDE_TEST_DIR ${PROJECT_TEST_INCLUDE_DIR}/test)
set(PROJECT_TEST_CATCH_HEADER     ${PROJECT_TEST_INCLUDE_TEST_DIR}/catch.hpp)

# 'make check' runs tests with verbose output
add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND} --verbose)

# download latest version of 'catch'
file(
    DOWNLOAD
    "https://raw.githubusercontent.com/philsquared/Catch/master/single_include/catch.hpp"
    ${PROJECT_TEST_CATCH_HEADER}
)


# update include path
include_directories(
    ${PROJECT_INCLUDE_DIR}
    ${PROJECT_TEST_INCLUDE_DIR}
)

# subdirectories
add_subdirectory(src)
