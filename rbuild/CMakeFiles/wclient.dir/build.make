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
include CMakeFiles/wclient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wclient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wclient.dir/flags.make

CMakeFiles/wclient.dir/examples/rc_write/client.cc.o: CMakeFiles/wclient.dir/flags.make
CMakeFiles/wclient.dir/examples/rc_write/client.cc.o: ../examples/rc_write/client.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yincong/github_proj/rdma_learning/rlibv2/rbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wclient.dir/examples/rc_write/client.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wclient.dir/examples/rc_write/client.cc.o -c /home/yincong/github_proj/rdma_learning/rlibv2/examples/rc_write/client.cc

CMakeFiles/wclient.dir/examples/rc_write/client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wclient.dir/examples/rc_write/client.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yincong/github_proj/rdma_learning/rlibv2/examples/rc_write/client.cc > CMakeFiles/wclient.dir/examples/rc_write/client.cc.i

CMakeFiles/wclient.dir/examples/rc_write/client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wclient.dir/examples/rc_write/client.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yincong/github_proj/rdma_learning/rlibv2/examples/rc_write/client.cc -o CMakeFiles/wclient.dir/examples/rc_write/client.cc.s

CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.requires:

.PHONY : CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.requires

CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.provides: CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.requires
	$(MAKE) -f CMakeFiles/wclient.dir/build.make CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.provides.build
.PHONY : CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.provides

CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.provides.build: CMakeFiles/wclient.dir/examples/rc_write/client.cc.o


# Object files for target wclient
wclient_OBJECTS = \
"CMakeFiles/wclient.dir/examples/rc_write/client.cc.o"

# External object files for target wclient
wclient_EXTERNAL_OBJECTS =

wclient: CMakeFiles/wclient.dir/examples/rc_write/client.cc.o
wclient: CMakeFiles/wclient.dir/build.make
wclient: examples/gflags/libgflags_nothreads.a
wclient: CMakeFiles/wclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yincong/github_proj/rdma_learning/rlibv2/rbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable wclient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wclient.dir/build: wclient

.PHONY : CMakeFiles/wclient.dir/build

CMakeFiles/wclient.dir/requires: CMakeFiles/wclient.dir/examples/rc_write/client.cc.o.requires

.PHONY : CMakeFiles/wclient.dir/requires

CMakeFiles/wclient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wclient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wclient.dir/clean

CMakeFiles/wclient.dir/depend:
	cd /home/yincong/github_proj/rdma_learning/rlibv2/rbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yincong/github_proj/rdma_learning/rlibv2 /home/yincong/github_proj/rdma_learning/rlibv2 /home/yincong/github_proj/rdma_learning/rlibv2/rbuild /home/yincong/github_proj/rdma_learning/rlibv2/rbuild /home/yincong/github_proj/rdma_learning/rlibv2/rbuild/CMakeFiles/wclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wclient.dir/depend

