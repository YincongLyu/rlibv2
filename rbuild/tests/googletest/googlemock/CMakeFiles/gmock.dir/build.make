# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_SOURCE_DIR = /home/yincong/github_proj/rdma_learning/rlibv2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yincong/github_proj/rdma_learning/rlibv2/rbuild

# Include any dependencies generated for this target.
include tests/googletest/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include tests/googletest/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include tests/googletest/googlemock/CMakeFiles/gmock.dir/flags.make

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: tests/googletest/googlemock/CMakeFiles/gmock.dir/flags.make
tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: ../tests/googletest/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yincong/github_proj/rdma_learning/rlibv2/rbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /home/yincong/github_proj/rdma_learning/rlibv2/tests/googletest/googlemock/src/gmock-all.cc

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yincong/github_proj/rdma_learning/rlibv2/tests/googletest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yincong/github_proj/rdma_learning/rlibv2/tests/googletest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.requires:

.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.requires

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.provides: tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.requires
	$(MAKE) -f tests/googletest/googlemock/CMakeFiles/gmock.dir/build.make tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.provides.build
.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.provides

tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.provides.build: tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o


# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib/libgmock.a: tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
lib/libgmock.a: tests/googletest/googlemock/CMakeFiles/gmock.dir/build.make
lib/libgmock.a: tests/googletest/googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yincong/github_proj/rdma_learning/rlibv2/rbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgmock.a"
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/googletest/googlemock/CMakeFiles/gmock.dir/build: lib/libgmock.a

.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/build

tests/googletest/googlemock/CMakeFiles/gmock.dir/requires: tests/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o.requires

.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/requires

tests/googletest/googlemock/CMakeFiles/gmock.dir/clean:
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/clean

tests/googletest/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yincong/github_proj/rdma_learning/rlibv2 /home/yincong/github_proj/rdma_learning/rlibv2/tests/googletest/googlemock /home/yincong/github_proj/rdma_learning/rlibv2/rbuild /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/tests/googletest/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/googletest/googlemock/CMakeFiles/gmock.dir/depend

