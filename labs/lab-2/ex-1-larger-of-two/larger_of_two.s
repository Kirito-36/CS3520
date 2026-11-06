# CS3520 - Worked example 1: the larger of two integers
# RISC-V assembly translation of larger_of_two.cpp
#
# Demonstrates: .data storage, loading words, a conditional branch,
# and printing with ecall.

        .data
a:      .word   17
b:      .word   42
msg:    .asciz  "Larger: "

        .text
main:
        lw      s0, a               # s0 = a  (assume a is the larger one)
        lw      t0, b               # t0 = b

        ble     t0, s0, print       # if b <= a, keep a
        mv      s0, t0              # otherwise larger = b

print:
        la      a0, msg             # print "Larger: "
        li      a7, 4
        ecall

        mv      a0, s0              # print the value
        li      a7, 1
        ecall

        li      a7, 10              # exit cleanly
        ecall
