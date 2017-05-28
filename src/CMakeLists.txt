# update include path
include_directories(${PROJECT_INCLUDE_DIR})

# set binary executable output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BIN_DIR})

# set vars used in cmake_tutorial and app
set(CMAKE_TUTORIAL_INCLUDE_DIR    ${PROJECT_INCLUDE_DIR}/cmake_tutorial)
set(CMAKE_TUTORIAL_STATIC_LIBRARY ct_static)
set(CMAKE_TUTORIAL_SHARED_LIBRARY ct_shared)

add_subdirectory(cmake_tutorial)
add_subdirectory(app)
