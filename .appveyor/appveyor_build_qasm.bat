@echo off
IF %COMPILER%==msvc2019 (
    @echo on
    CALL "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
    mkdir build_qasm
    cd build_qasm
    cmake .. -DUSE_OPENQASM2_SPECS=ON
    msbuild -verbosity:minimal -m:8 unit_tests\unit_tests.vcxproj
    cd ..
)
IF %COMPILER%==msys2 (
    @echo on
    SET "PATH=C:\msys64\mingw64\bin;%PATH%"
    cd %APPVEYOR_BUILD_FOLDER%
    mkdir build_qasm
    cd build_qasm
    bash -lc "cmake .. -DUSE_QISKIT_SPECS=OFF -GNinja && ninja unit_tests"
    cd ..
)
