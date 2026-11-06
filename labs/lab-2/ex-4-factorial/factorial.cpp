// CS3520 - Worked example 4: factorial as a procedure
// C++ model. Written first, tested, then translated to RISC-V assembly.

#include <iostream>

int factorial(int n)
{
    int result = 1;
    for (int i = 2; i <= n; i++) {   // multiply 2 * 3 * ... * n
        result = result * i;
    }
    return result;
}

int main()
{
    int n = 5;

    std::cout << "Factorial: " << factorial(n) << std::endl;
    return 0;
}
