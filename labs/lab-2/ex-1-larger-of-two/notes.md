# Example 1: Larger of two integers

CS3520 worked example. The C++ model was written and tested first, then translated to RISC-V assembly.

## Task

Print the larger of two integers held in the `.data` section.

## Files

| File | Purpose |
|---|---|
| `larger_of_two.cpp` | C++ model of the solution |
| `larger_of_two.s` | RISC-V assembly translation |

## Concepts demonstrated

- `.data` storage and `lw`
- A conditional branch (`ble`)
- Printing with `ecall`

## How to run

**C++ model**

```
g++ -std=c++17 larger_of_two.cpp -o larger
./larger
```

**Assembly (RARS)**

1. Open `larger_of_two.s` in RARS.
2. Assemble (F3), then run (F5).
3. Read the output in the Run I/O panel.

## Expected output

```
Larger: 42
```

## Notes

Inputs are `a` and `b` in `.data` (17 and 42). Edit them to try other values.
