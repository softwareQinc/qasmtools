# qasmtools
[![Build status - CircleCI Linux/macOS](https://circleci.com/gh/softwareQinc/qasmtools.svg?style=svg)](https://circleci.com/gh/softwareQinc/qasmtools)
[![Build status](https://ci.appveyor.com/api/projects/status/yidln2j88dssf4v1?svg=true)](https://ci.appveyor.com/project/vsoftco/qasmtools)

To use the code in this repository, add `qasmtools/include` as an include directory.

## OpenQASM 2.0 standard specifications
In order to use the OpenQASM 2.0 standard instead of Qiskit specifications, set the compile definition `USE_OPENQASM2_SPECS=true`.

## Unit testing
```bash
mkdir build && cd build
cmake ..
make -j8 unit_tests
ctest
```
For unit testing with OpenQASM 2.0 specifications, do `cmake .. -DUSE_OPENQASM2_SPECS=ON`.
