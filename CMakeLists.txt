cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(cmake_tutorial VERSION 0.1 LANGUAGES CXX)

set(CMAKE_VERBOSE_MAKEFILE on)

# config defines
set(CMAKE_TUTORIAL_VERSION 0.1)
set(CMAKE_TUTORIAL_AUTHOR  "wrpaape")

# output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# misc global variables
set(PROJECT_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
set(PROJECT_TEST_DIR    ${PROJECT_SOURCE_DIR}/test)

# update include path
include_directories(
    ${PROJECT_INCLUDE_DIR}
)

# subdirectories
add_subdirectory(src)
