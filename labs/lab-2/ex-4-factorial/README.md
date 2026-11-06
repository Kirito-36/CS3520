# Example 4: Factorial as a procedure

CS3520 worked example. The C++ model was written and tested first, then translated to RISC-V assembly.

## Task

Compute the factorial of N, with the calculation written as a procedure that `main` calls.

## Files

| File | Purpose |
|---|---|
| `factorial.cpp` | C++ model of the solution |
| `factorial.s` | RISC-V assembly translation |

## Concepts demonstrated

- `jal` / `jalr`
- Argument and return registers (`a0`)
- Saving and restoring a callee-saved register (`s1`) on the stack

## How to run

**C++ model**

```
g++ -std=c++17 factorial.cpp -o factorial
./factorial
```

**Assembly (RARS)**

1. Open `factorial.s` in RARS.
2. Assemble (F3), then run (F5).
3. Read the output in the Run I/O panel.

## Expected output

```
Factorial: 120
```

## Notes

N is 5. The procedure is a leaf, so it does not need to save `ra`. `mul` needs the RISC-V M extension, which RARS enables by default.
