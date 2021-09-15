cmake_minimum_required(VERSION 3.12)
project(openQASM_parser VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
enable_testing()

#### Source directory
add_compile_definitions(PATH="${CMAKE_SOURCE_DIR}" NOMINMAX)

#### headers
add_library(libqasmparser INTERFACE)
target_include_directories(libqasmparser INTERFACE
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/>)

#### Unit testing
add_subdirectory(${CMAKE_SOURCE_DIR}/unit_tests/)
