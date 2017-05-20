# test configuration
set(PROJECT_TEST_BIN_DIR          ${PROJECT_TEST_DIR}/bin          PARENT_SCOPE)
set(PROJECT_TEST_INCLUDE_DIR      ${PROJECT_TEST_DIR}/include      PARENT_SCOPE)
set(PROJECT_TEST_INCLUDE_TEST_DIR ${PROJECT_TEST_INCLUDE_DIR}/test PARENT_SCOPE)

# catch
set(PROJECT_TEST_CATCH_DIR    ${PROJECT_TEST_INCLUDE_TEST_DIR}/catch)
set(PROJECT_TEST_CATCH_HEADER ${PROJECT_TEST_CATCH_DIR}/catch.hpp PARENT_SCOPE)

# 'make check' runs tests with verbose output
add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND} --verbose)

# download latest version of 'catch'
file(MAKE_DIRECTORY ${PROJECT_TEST_CATCH_DIR})
file(
    DOWNLOAD
    "https://raw.githubusercontent.com/philsquared/Catch/master/single_include/catch.hpp"
    ${PROJECT_TEST_CATCH_HEADER}
)


find_package(GTest)
if(GTEST_FOUND)

else()
    # We need thread support
    find_package(Threads REQUIRED)

    # Enable ExternalProject CMake module
    include(ExternalProject)

    # Download and install GoogleTest
    ExternalProject_Add(
        gtest
        URL https://github.com/google/googletest/archive/master.zip
        PREFIX ${CMAKE_CURRENT_BINARY_DIR}/gtest
        # Disable install step
        INSTALL_COMMAND ""
    )

    # Get GTest source and binary directories from CMake project
    ExternalProject_Get_Property(gtest SOURCE_DIR BINARY_DIR)

    # Create a libgtest target to be used as a dependency by test programs
    add_library(libgtest IMPORTED STATIC GLOBAL)
    add_dependencies(libgtest gtest)

    # Set libgtest properties
    set_target_properties(libgtest PROPERTIES
        "IMPORTED_LOCATION" "${BINARY_DIR}/googlemock/gtest/libgtest.a"
        "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}"
    )

    # Create a libgmock target to be used as a dependency by test programs
    add_library(libgmock IMPORTED STATIC GLOBAL)
    add_dependencies(libgmock gtest)

    # Set libgmock properties
    set_target_properties(libgmock PROPERTIES
        "IMPORTED_LOCATION" "${BINARY_DIR}/googlemock/libgmock.a"
        "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}"
    )

    # I couldn't make it work with INTERFACE_INCLUDE_DIRECTORIES
    include_directories(
        "${SOURCE_DIR}/googletest/include"
        "${SOURCE_DIR}/googlemock/include")
endif()

enable_testing()
