// Unit testing entry point

#include "gtest/gtest.h"

#include <iostream>

int main(int argc, char** argv) {
#if USE_OPENQASM2_SPECS
    std::cout << "OpenQASM 2.0 specs" << std::endl;
#else
    std::cout << "Qiskit specs" << std::endl;
#endif
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
