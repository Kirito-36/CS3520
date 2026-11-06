// CS3520 - Worked example 5 (challenge): greatest common divisor
// C++ model. Written first, tested, then translated to RISC-V assembly.

#include <iostream>

int gcd(int a, int b)
{
    while (b != 0) {          // Euclid: replace (a, b) with (b, a mod b)
        int r = a % b;
        a = b;
        b = r;
    }
    return a;                 // when b reaches 0, a holds the answer
}

int main()
{
    int x = 48;
    int y = 18;

    std::cout << "GCD: " << gcd(x, y) << std::endl;
    return 0;
}
