cmake_minimum_required(VERSION 3.12)
project(qasmtools VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
enable_testing()

#### Headers
add_library(libqasmtools INTERFACE)
target_include_directories(libqasmtools INTERFACE
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/>)

#### Enable Qiskit Specs
option(USE_QISKIT_SPECS "Use Qiskit gate specifications instead of OpenQASM standard" OFF)
if (${USE_QISKIT_SPECS})
    target_compile_definitions(libqasmtools INTERFACE -DUSE_QISKIT_SPECS)
endif ()

#### Unit testing
add_subdirectory(${CMAKE_SOURCE_DIR}/unit_tests/)
