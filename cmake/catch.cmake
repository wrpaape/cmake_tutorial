# Catch Testing Framework
# ------------------------------------------------------------------------------
set(CATCH_TEST_DIR    ${PROJECT_TEST_INCLUDE_DIR}/catch)
set(CATCH_TEST_HEADER ${CATCH_TEST_DIR}/catch.hpp)

# create directory in test/include
file(MAKE_DIRECTORY ${CATCH_TEST_DIR})

# download latest version of 'catch'
file(
    DOWNLOAD
    https://raw.githubusercontent.com/philsquared/Catch/master/single_include/catch.hpp
    ${CATCH_TEST_HEADER}
)


include(CMakeParseArguments)

function(add_catch_test)
    cmake_parse_arguments(
        CATCH_TEST          # parsed params prefix
        ""                  # boolean params
        "NAME"              # value params
        "SOURCES;LIBRARIES" # list params
        ${ARGN}             # input params
    )

    set(MISSING_REQUIRED "")

    foreach(REQUIRED NAME SOURCES)
        if(${CATCH_TEST_${REQUIRED}} STREQUAL "")
            set(MISSING_REQUIRED "${MISSING_REQUIRED} ${REQUIRED}")
        endif()
    endforeach(REQUIRED)

    if(NOT MISSING_REQUIRED STREQUAL "")
        message(
            FATAL_ERROR
            "missing required parameters '${MISSING_REQUIRED}' in call to "
            "'add_catch_test'"
        )
    endif()

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_TEST_BIN_DIR})

    set(CATCH_TEST_TARGET test_${CATCH_TEST_NAME})

    add_executable(${CATCH_TEST_TARGET} ${CATCH_TEST_SOURCES} ${CATCH_TEST_HEADER})

    target_link_libraries(${CATCH_TEST_TARGET} ${CATCH_TEST_LIBRARIES})

    add_test(${CATCH_TEST_NAME} ${PROJECT_TEST_BIN_DIR}/${TARGET})
endfunction(add_catch_test)
