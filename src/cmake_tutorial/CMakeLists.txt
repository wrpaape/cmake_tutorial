# configure header, move to 'include'
set(CMAKE_TUTORIAL_CONFIG_HPP
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial_config.hpp)

configure_file(
    cmake_tutorial_config.hpp.in
    ${CMAKE_TUTORIAL_CONFIG_HPP}
)

set(
    SOURCES
    cmake_tutorial_base.cpp
    cmake_tutorial.cpp
)

set(
    HEADERS
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial_base.hpp
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.hpp
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial.ipp
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/ct_helper.hpp
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/ct_helper.ipp
    ${CMAKE_TUTORIAL_INCLUDE_DIR}/cmake_tutorial_config.ipp
    ${CMAKE_TUTORIAL_CONFIG_HPP}
)

add_library(${CMAKE_TUTORIAL_STATIC_LIBRARY} STATIC ${SOURCES} ${HEADERS})
add_library(${CMAKE_TUTORIAL_SHARED_LIBRARY} SHARED ${SOURCES} ${HEADERS})

add_subdirectory(test)
