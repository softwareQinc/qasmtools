// Unit testing entry point

#include "gtest/gtest.h"

#include <iostream>

int main(int argc, char** argv) {
#if USE_QISKIT_SPECS
    std::cout << "Qiskit specs" << std::endl;
#else
    std::cout << "OpenQASM specs" << std::endl;
#endif
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
