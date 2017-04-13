set(TARGET cmake_tutorial_demo)

set(
    SOURCES
    ${TARGET}.cpp
)

set(
    HEADERS
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
)

set(
    LIBRARIES
    ${CMAKE_TUTORIAL_STATIC_LIBRARY}
)

add_executable(${TARGET} ${SOURCES} ${HEADERS})
target_link_libraries(${TARGET} ${LIBRARIES})
