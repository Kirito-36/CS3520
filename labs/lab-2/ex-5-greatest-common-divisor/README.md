# Example 5 (challenge): Greatest common divisor

CS3520 worked example. The C++ model was written and tested first, then translated to RISC-V assembly.

## Task

Compute the greatest common divisor of two integers using Euclid's algorithm, written as a procedure.

## Files

| File | Purpose |
|---|---|
| `gcd.cpp` | C++ model of the solution |
| `gcd.s` | RISC-V assembly translation |

## Concepts demonstrated

- A procedure containing a loop
- `rem` for the remainder step
- Register discipline: only caller-saved registers are used, so no stack frame is needed

## How to run

**C++ model**

```
g++ -std=c++17 gcd.cpp -o gcd
./gcd
```

**Assembly (RARS)**

1. Open `gcd.s` in RARS.
2. Assemble (F3), then run (F5).
3. Read the output in the Run I/O panel.

## Expected output

```
GCD: 6
```

## Notes

Inputs are 48 and 18, stored in `.data`. Euclid's step: replace (a, b) with (b, a mod b) until b is 0.
