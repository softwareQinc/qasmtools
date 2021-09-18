@echo off
IF %COMPILER%==msvc2019 (
    cd build_qiskit
    ctest
    cd ..
)
IF %COMPILER%==msys2 (
    cd build_qiskit
    ctest
    cd ..
)
