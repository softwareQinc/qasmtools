# qasmtools

[![GitHub actions](https://github.com/softwareqinc/qasmtools/actions/workflows/cmake.yml/badge.svg)](https://github.com/softwareQinc/qasmtools/actions)

To use the code in this repository, add `qasmtools/include` as an include
directory.

## OpenQASM 2.0 standard specifications

In order to use the OpenQASM 2.0 standard instead of Qiskit specifications, set
the compile definition `QASMTOOLS_QASM2_SPECS=ON`.

## Unit testing

```shell
cmake -B build 
cmake --build build --target unit_tests --parallel 8
ctest --test-dir build
```

For unit testing with OpenQASM 2.0 specifications, configure with

```shell
cmake -B build -DQASMTOOLS_QASM2_SPECS=ON`.
```
