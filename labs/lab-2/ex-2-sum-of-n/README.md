# Example 2: Sum of the first N integers

CS3520 worked example. The C++ model was written and tested first, then translated to RISC-V assembly.

## Task

Compute the sum of the first N integers, for N stored in memory.

## Files

| File | Purpose |
|---|---|
| `sum-of-n.cpp` | C++ model of the solution |
| `sum-of-n.s` | RISC-V assembly translation |

## Concepts demonstrated

- A counted loop
- A conditional branch to leave the loop
- `.data` storage and `lw`

## How to run

**C++ model**

```
g++ -std=c++17 sum-of-n.cpp -o sum-n
./sum-n
```

**Assembly (RARS)**

1. Open `sum-of-n.s` in RARS.
2. Assemble (F3), then run (F5).
3. Read the output in the Run I/O panel.

## Expected output

```
Sum: 55
```

## Notes

N is stored in `.data` (10). The numbers being added are produced by the loop counter, so there is no array.
