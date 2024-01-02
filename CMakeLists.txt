cmake_minimum_required(VERSION 2.8)

add_definitions(-std=c++17) #support std::optional

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
# target_compile_features(your_target_name PRIVATE cxx_std_17)
## tests
enable_testing()

add_test(NAME test COMMAND coretest)
add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND} --verbose
                  DEPENDS coretest)

include(tests/tests.cmake)

## for examples
set(ggflags_DIR "${CMAKE_SOURCE_DIR}/examples/gflags")
add_subdirectory(${CMAKE_SOURCE_DIR}/examples/gflags)

include(examples/exp.cmake)

include(benchs/bench.cmake)

project (rlib)

