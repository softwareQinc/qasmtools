# openQASM_parser
To use the code in this repository, add `openQASM_parser/include` as an include directory.

## Qiskit specifications
In order to use Qiskit specifications instead of the OpenQASM 2.0 standard, add the compile definition `USE_QISKIT_SPECS`.

## Unit testing
```bash
mkdir build && cd build
cmake ..
make -j8 unit_tests
ctest
```
For unit testing with QIskit specifications, do `cmake .. -DUSE_QISKIT_SPECS=ON`.
