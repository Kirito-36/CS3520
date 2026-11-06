// CS3520 - Worked example 1: the larger of two integers
// C++ model. Written first, tested, then translated to RISC-V assembly.

#include <iostream>

int main()
{
    int a = 17;
    int b = 42;

    int larger = a;                // assume a is the larger one
    if (b > a) {                   // unless b beats it
        larger = b;
    }

    std::cout << "Larger: " << larger << std::endl;
    return 0;
}
