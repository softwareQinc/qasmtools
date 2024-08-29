cmake_minimum_required(VERSION 3.15)
project(
  qasmtools
  VERSION 1.0
  LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
enable_testing()

# qasmtools root directory
add_compile_definitions(PROJECT_ROOT_DIR="${PROJECT_SOURCE_DIR}")

# Headers
add_library(libqasmtools INTERFACE)
target_include_directories(
  libqasmtools
  INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/>)

# Enable OpenQASM 2.0 Specs
option(QASMTOOLS_QASM2_SPECS
       "Use OpenQASM 2.0 standard instead of Qiskit gate specifications" OFF)
if(${QASMTOOLS_QASM2_SPECS})
  target_compile_definitions(libqasmtools
                             INTERFACE -DQASMTOOLS_QASM2_SPECS=true)
else()
  target_compile_definitions(libqasmtools
                             INTERFACE -DQASMTOOLS_QASM2_SPECS=false)
endif()

# Unit testing
add_subdirectory(${CMAKE_SOURCE_DIR}/unit_tests/)
