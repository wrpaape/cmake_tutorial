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
include src/cmake_tutorial/CMakeFiles/libct_static.dir/depend.make

# Include the progress variables for this target.
include src/cmake_tutorial/CMakeFiles/libct_static.dir/progress.make

# Include the compile flags for this target's objects.
include src/cmake_tutorial/CMakeFiles/libct_static.dir/flags.make

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o: src/cmake_tutorial/CMakeFiles/libct_static.dir/flags.make
src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o: ../src/cmake_tutorial/cmake_tutorial_base.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reid/my_projects/cpp/cmake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o -c /home/reid/my_projects/cpp/cmake_tutorial/src/cmake_tutorial/cmake_tutorial_base.cpp

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.i"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/reid/my_projects/cpp/cmake_tutorial/src/cmake_tutorial/cmake_tutorial_base.cpp > CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.i

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.s"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/reid/my_projects/cpp/cmake_tutorial/src/cmake_tutorial/cmake_tutorial_base.cpp -o CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.s

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.requires:

.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.requires

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.provides: src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.requires
	$(MAKE) -f src/cmake_tutorial/CMakeFiles/libct_static.dir/build.make src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.provides.build
.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.provides

src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.provides.build: src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o


# Object files for target libct_static
libct_static_OBJECTS = \
"CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o"

# External object files for target libct_static
libct_static_EXTERNAL_OBJECTS =

../lib/cmake_tutorial/liblibct_static.a: src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o
../lib/cmake_tutorial/liblibct_static.a: src/cmake_tutorial/CMakeFiles/libct_static.dir/build.make
../lib/cmake_tutorial/liblibct_static.a: src/cmake_tutorial/CMakeFiles/libct_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/reid/my_projects/cpp/cmake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/cmake_tutorial/liblibct_static.a"
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && $(CMAKE_COMMAND) -P CMakeFiles/libct_static.dir/cmake_clean_target.cmake
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libct_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cmake_tutorial/CMakeFiles/libct_static.dir/build: ../lib/cmake_tutorial/liblibct_static.a

.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/build

src/cmake_tutorial/CMakeFiles/libct_static.dir/requires: src/cmake_tutorial/CMakeFiles/libct_static.dir/cmake_tutorial_base.cpp.o.requires

.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/requires

src/cmake_tutorial/CMakeFiles/libct_static.dir/clean:
	cd /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial && $(CMAKE_COMMAND) -P CMakeFiles/libct_static.dir/cmake_clean.cmake
.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/clean

src/cmake_tutorial/CMakeFiles/libct_static.dir/depend:
	cd /home/reid/my_projects/cpp/cmake_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reid/my_projects/cpp/cmake_tutorial /home/reid/my_projects/cpp/cmake_tutorial/src/cmake_tutorial /home/reid/my_projects/cpp/cmake_tutorial/build /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial /home/reid/my_projects/cpp/cmake_tutorial/build/src/cmake_tutorial/CMakeFiles/libct_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cmake_tutorial/CMakeFiles/libct_static.dir/depend
