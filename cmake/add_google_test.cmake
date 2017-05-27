if(PROJECT_CMAKE_ADD_GOOGLE_TEST_CMAKE_INCLUDED)
    return()
endif()
set(PROJECT_CMAKE_ADD_GOOGLE_TEST_CMAKE_INCLUDED TRUE)
# ==============================================================================
# add a 'test_${NAME}' executable and CTest from sources compiled with the
# Google Test/Mock framework
# ==============================================================================
# External Dependencies
# ------------------------------------------------------------------------------
cmake_minimum_required(VERSION 2.8.2 FATAL_ERROR) # ExternalProject
include(ExternalProject)
include(add_custom_test)


# Exported Variables
# ------------------------------------------------------------------------------
set(GOOGLE_TEST_SRC_DIR   ${PROJECT_TEST_SRC_DIR}/googletest)
set(GOOGLE_TEST_BUILD_DIR ${PROJECT_BUILD_TEST_SRC_DIR}/googletest)


# Set Up Framework
# ------------------------------------------------------------------------------
ExternalProject_Add(
    googletest
    GIT_REPOSITORY    https://github.com/google/googletest.git
    GIT_TAG           master
    SOURCE_DIR        ${GOOGLE_TEST_SRC_DIR}
    BINARY_DIR        ${GOOGLE_TEST_BUILD_DIR}
    CONFIGURE_COMMAND ""
    BUILD_COMMAND     ""
    INSTALL_COMMAND   ""
    TEST_COMMAND      ""
)

# # Download and unpack googletest at configure time
# configure_file(CMakeLists.txt.in
#                googletest-download/CMakeLists.txt)
# execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
# execute_process(COMMAND ${CMAKE_COMMAND} --build .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
 
# Prevent GoogleTest from overriding our compiler/linker options
# when building with Visual Studio
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
 
# Add googletest directly to our build. This adds
# the following targets: gtest, gtest_main, gmock
# and gmock_main
add_subdirectory(
    ${GOOGLE_TEST_SRC_DIR}
    ${GOOGLE_TEST_LIB_DIR}
)
 
set(GOOGLE_TEST_GTEST_INCLUDE_DIR ${gtest_SOURCE_DIR}/include)
set(GOOGLE_TEST_GMOCK_INCLUDE_DIR ${gmock_SOURCE_DIR}/include)
set(
    GOOGLE_TEST_SOURCES
    ${GOOGLE_TEST_GTEST_INCLUDE_DIR}/gtest/gtest.h
    ${GOOGLE_TEST_GMOCK_INCLUDE_DIR}/gmock/gmock.h
)

# The gtest/gmock targets carry header search path
# dependencies automatically when using CMake 2.8.11 or
# later. Otherwise we have to add them here ourselves.
if (CMAKE_VERSION VERSION_LESS 2.8.11)
    set(
        GOOGLE_TEST_INCLUDE_DIRECTORIES
        ${GOOGLE_TEST_GMOCK_INCLUDE_DIR}
        ${GOOGLE_TEST_GMOCK_INCLUDE_DIR}
    )
endif()
 

# External API
# ------------------------------------------------------------------------------
function(add_google_test)
    add_custom_test(
        ${ARGN}
        FRAMEWORK_NAME                googletest
        FRAMEWORK_SOURCES             ${GOOGLE_TEST_SOURCES}
        FRAMEWORK_INCLUDE_DIRECTORIES "${GOOGLE_TEST_INCLUDE_DIRECTORIES}"
        FRAMEWORK_LIBRARIES           gtest gtest_main gmock gmock_main
    )
endfunction()
