# CS3520 - Worked example 5 (challenge): greatest common divisor
# RISC-V assembly translation of gcd.cpp
#
# Demonstrates: a procedure containing a loop, the rem instruction,
# argument and return registers, and register discipline.

        .data
x:      .word   48
y:      .word   18
msg:    .asciz  "GCD: "

        .text
main:
        lw      a0, x               # a0 = first argument
        lw      a1, y               # a1 = second argument
        jal     ra, gcd             # call gcd(a0, a1); result in a0

        mv      s0, a0              # keep the result safe across the print

        la      a0, msg             # print "GCD: "
        li      a7, 4
        ecall

        mv      a0, s0              # print the value
        li      a7, 1
        ecall

        li      a7, 10              # exit cleanly
        ecall

# ---------------------------------------------------------------
# gcd(a in a0, b in a1) -> greatest common divisor in a0
#
# Euclid's algorithm: while b != 0, replace (a, b) with (b, a mod b).
# The procedure only uses a0, a1 and t0. All three are caller-saved
# (temporaries and argument registers), so nothing has to be saved
# on the stack. It is also a leaf procedure, so ra is untouched.
# ---------------------------------------------------------------
gcd:
loop:
        beq     a1, x0, done        # leave the loop once b == 0
        rem     t0, a0, a1          # t0 = a mod b
        mv      a0, a1              # a = b
        mv      a1, t0              # b = a mod b
        beq     x0, x0, loop        # repeat

done:
        jalr    x0, ra, 0           # return (a is already in a0)
