# CS3520 - Worked example 2: sum of the first N integers
# RISC-V assembly translation of sum-of-n.cpp
#
# Demonstrates: .data storage, a counted loop, a conditional branch
# to leave the loop, and printing with ecall.

        .data
n:      .word   10
msg:    .asciz  "Sum: "

        .text
main:
        lw      t0, n               # t0 = N
        li      s0, 0               # sum = 0
        li      t1, 1               # i = 1

loop:
        bgt     t1, t0, done        # leave the loop once i > N
        add     s0, s0, t1          # sum = sum + i
        addi    t1, t1, 1           # i++
        beq     x0, x0, loop        # repeat

done:
        la      a0, msg             # print "Sum: "
        li      a7, 4
        ecall

        mv      a0, s0              # print the value
        li      a7, 1
        ecall

        li      a7, 10              # exit cleanly
        ecall
