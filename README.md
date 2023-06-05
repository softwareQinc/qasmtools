# qasmtools
[![Build status - CircleCI Linux/macOS](https://circleci.com/gh/softwareQinc/qasmtools.svg?style=svg)](https://circleci.com/gh/softwareQinc/qasmtools)
[![Build status](https://ci.appveyor.com/api/projects/status/yidln2j88dssf4v1?svg=true)](https://ci.appveyor.com/project/vsoftco/qasmtools)

To use the code in this repository, add `qasmtools/include` as an include directory.

## OpenQASM 2.0 standard specifications
In order to use the OpenQASM 2.0 standard instead of Qiskit specifications, set the compile definition `QASMTOOLS_QASM2_SPECS=ON`.

## Unit testing

```bash
cmake -B build 
cmake --build build --target unit_tests --parallel 8
ctest --test-dir build
```

For unit testing with OpenQASM 2.0 specifications, configure with 
`cmake -B build -DQASMTOOLS_QASM2_SPECS=ON`.
