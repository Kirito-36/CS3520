// CS3520 - Worked example 3: count the even elements of an array
// C++ model. Written first, tested, then translated to RISC-V assembly.

#include <iostream>

int count_even(const int arr[], int n)
{
    int count = 0;
    for (int i = 0; i < n; i++) {    // examine every element
        if ((arr[i] & 1) == 0) {     // lowest bit clear means even
            count++;
        }
    }
    return count;
}

int main()
{
    int array[] = {8, 3, 14, 5, 22, 9, 6, 11};
    int n = 8;

    std::cout << "Even count: " << count_even(array, n) << std::endl;
    return 0;
}
