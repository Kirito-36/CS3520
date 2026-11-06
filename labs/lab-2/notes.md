# CS3520 RISC-V Worked Examples

Five small programs. Each folder holds a C++ model and its RISC-V assembly translation, plus its own README.

| Folder | Task | Key ideas |
|---|---|---|
| `01-larger_of_two/` | Larger of two integers | Conditional branch |
| `02-sum-of-n/` | Sum of the first N integers | Counted loop |
| `03-count-even/` | Count even elements of an array | Loop, `andi`, array indexing |
| `04-factorial/` | Factorial as a procedure | `jal`/`jalr`, stack |
| `05-gcd/` | GCD by Euclid's algorithm (challenge) | Procedure with a loop, `rem` |

## Method

1. Write the C++ model and test it.
2. Translate it to RISC-V assembly one statement at a time.
3. Run both and check the outputs match.

## Tools

- C++: `g++ -std=c++17`
- RISC-V: [RARS](https://github.com/TheThirdOne/rars) (assemble with F3, run with F5)

## Conventions used in every `.s` file

- `ecall` codes: 4 prints a string, 1 prints an integer, 10 exits.
- Inputs live in `.data`; edit them there to try other values.
- `main` is the first label in `.text`.
- Results are returned in `a0`.
