cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

project(
    cmake_tutorial
    VERSION 0.1.0
    LANGUAGES CXX
)

set(CMAKE_VERBOSE_MAKEFILE on)

# config defines
set(CMAKE_TUTORIAL_VERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR})
set(CMAKE_TUTORIAL_AUTHOR  "\"wrpaape\"")

# output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

# misc global variables
set(PROJECT_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
set(PROJECT_TEST_DIR    ${PROJECT_SOURCE_DIR}/test)

# update recognized source file extensions
# list(
#     APPEND
#     CMAKE_CXX_SOURCE_FILE_EXTENSIONS
#     ipp
# )

# update include path
include_directories(
    ${PROJECT_INCLUDE_DIR}
)


# subdirectories
add_subdirectory(src)
