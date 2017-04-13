# set vars used in cmake_tutorial and app
set(CMAKE_TUTORIAL_INCLUDE_DIR    ${PROJECT_INCLUDE_DIR}/cmake_tutorial)
set(CMAKE_TUTORIAL_STATIC_LIBRARY libct_static)
set(CMAKE_TUTORIAL_SHARED_LIBRARY libct_shared)

add_subdirectory(cmake_tutorial)
add_subdirectory(app)
