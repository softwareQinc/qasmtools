# qasmtools
[![Build status - CircleCI Linux/macOS](https://circleci.com/gh/softwareQinc/qasmtools.svg?style=svg)](https://circleci.com/gh/softwareQinc/qasmtools)
[![Build status](https://ci.appveyor.com/api/projects/status/yidln2j88dssf4v1?svg=true)](https://ci.appveyor.com/project/vsoftco/qasmtools)

To use the code in this repository, add `qasmtools/include` as an include directory.

## Qiskit specifications
In order to use Qiskit specifications instead of the OpenQASM 2.0 standard, set the compile definition `USE_QISKIT_SPECS=true`.

## Unit testing
```bash
mkdir build && cd build
cmake ..
make -j8 unit_tests
ctest
```
For unit testing with Qiskit specifications, do `cmake .. -DUSE_QISKIT_SPECS=ON`.
