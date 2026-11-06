// CS3520 - Worked example 2: sum of the first N integers
// C++ model. Written first, tested, then translated to RISC-V assembly.

#include <iostream>

int main()
{
    int n = 10;
    int sum = 0;

    for (int i = 1; i <= n; i++) {   // add 1, 2, 3, ... n
        sum = sum + i;
    }

    std::cout << "Sum: " << sum << std::endl;
    return 0;
}
