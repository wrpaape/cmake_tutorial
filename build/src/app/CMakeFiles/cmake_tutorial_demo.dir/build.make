# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/reid/my_projects/cpp/cmake_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reid/my_projects/cpp/cmake_tutorial/build

# Include any dependencies generated for this target.
include src/app/CMakeFiles/cmake_tutorial_demo.dir/depend.make

# Include the progress variables for this target.
include src/app/CMakeFiles/cmake_tutorial_demo.dir/progress.make

# Include the compile flags for this target's objects.
include src/app/CMakeFiles/cmake_tutorial_demo.dir/flags.make

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o: src/app/CMakeFiles/cmake_tutorial_demo.dir/flags.make
src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o: ../src/app/cmake_tutorial_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reid/my_projects/cpp/cmake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o -c /home/reid/my_projects/cpp/cmake_tutorial/src/app/cmake_tutorial_demo.cpp

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.i"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/reid/my_projects/cpp/cmake_tutorial/src/app/cmake_tutorial_demo.cpp > CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.i

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.s"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/reid/my_projects/cpp/cmake_tutorial/src/app/cmake_tutorial_demo.cpp -o CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.s

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.requires:

.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.requires

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.provides: src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.requires
	$(MAKE) -f src/app/CMakeFiles/cmake_tutorial_demo.dir/build.make src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.provides.build
.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.provides

src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.provides.build: src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o


# Object files for target cmake_tutorial_demo
cmake_tutorial_demo_OBJECTS = \
"CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o"

# External object files for target cmake_tutorial_demo
cmake_tutorial_demo_EXTERNAL_OBJECTS =

../bin/cmake_tutorial_demo: src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o
../bin/cmake_tutorial_demo: src/app/CMakeFiles/cmake_tutorial_demo.dir/build.make
../bin/cmake_tutorial_demo: ../lib/cmake_tutorial/liblibct_static.a
../bin/cmake_tutorial_demo: src/app/CMakeFiles/cmake_tutorial_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/reid/my_projects/cpp/cmake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/cmake_tutorial_demo"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmake_tutorial_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/app/CMakeFiles/cmake_tutorial_demo.dir/build: ../bin/cmake_tutorial_demo

.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/build

src/app/CMakeFiles/cmake_tutorial_demo.dir/requires: src/app/CMakeFiles/cmake_tutorial_demo.dir/cmake_tutorial_demo.cpp.o.requires

.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/requires

src/app/CMakeFiles/cmake_tutorial_demo.dir/clean:
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/app && $(CMAKE_COMMAND) -P CMakeFiles/cmake_tutorial_demo.dir/cmake_clean.cmake
.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/clean

src/app/CMakeFiles/cmake_tutorial_demo.dir/depend:
	cd /home/reid/my_projects/cpp/cmake_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reid/my_projects/cpp/cmake_tutorial /home/reid/my_projects/cpp/cmake_tutorial/src/app /home/reid/my_projects/cpp/cmake_tutorial/build /home/reid/my_projects/cpp/cmake_tutorial/build/src/app /home/reid/my_projects/cpp/cmake_tutorial/build/src/app/CMakeFiles/cmake_tutorial_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/app/CMakeFiles/cmake_tutorial_demo.dir/depend

