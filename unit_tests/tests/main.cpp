// Unit testing entry point

#include <iostream>

#include "gtest/gtest.h"

int main(int argc, char** argv) {
#if QASMTOOLS_QASM2_SPECS
    std::cout << "OpenQASM 2.0 specs" << std::endl;
#else
    std::cout << "Qiskit specs" << std::endl;
#endif
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
