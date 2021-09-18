@echo off
IF %COMPILER%==msvc2019 (
    cd build_qasm
    ctest
    cd ..
)
IF %COMPILER%==msys2 (
    cd build_qasm
    ctest
    cd ..
)
