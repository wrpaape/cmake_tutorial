set(TARGET test_cmake_tutorial)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_TEST_BIN_DIR})

set(
    SOURCES
    test_cmake_tutorial.cpp
)

set(
    HEADERS
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
    ${PROJECT_TEST_CATCH_HEADER}
)

set(
    LIBRARIES
    ${CMAKE_TUTORIAL_SHARED_LIBRARY}
)

add_executable(${TARGET} ${SOURCES} ${HEADERS})
target_link_libraries(${TARGET} ${LIBRARIES})

add_test(CmakeTutorialTest ${PROJECT_TEST_BIN_DIR}/${TARGET})
