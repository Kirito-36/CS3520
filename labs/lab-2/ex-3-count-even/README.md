# Example 3: Count the even elements of an array

CS3520 worked example. The C++ model was written and tested first, then translated to RISC-V assembly.

## Task

Count how many elements of an array are even, and print the count.

## Files

| File | Purpose |
|---|---|
| `count-even.cpp` | C++ model of the solution |
| `count-even.s` | RISC-V assembly translation |

## Concepts demonstrated

- A loop with array indexing (`slli`, `add`, `lw`)
- `andi` for the bit test
- Conditional branches

## How to run

**C++ model**

```
g++ -std=c++17 count-even.cpp -o count-even
./count-even
```

**Assembly (RARS)**

1. Open `count-even.s` in RARS.
2. Assemble (F3), then run (F5).
3. Read the output in the Run I/O panel.

## Expected output

```
Even count: 4
```

## Notes

The array holds 8 words. An element is even when its lowest bit is 0, tested with `andi t6, t5, 1`.
