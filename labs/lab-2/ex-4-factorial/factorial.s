# CS3520 - Worked example 4: factorial as a procedure
# RISC-V assembly translation of factorial.cpp
#
# Demonstrates: .data storage, a procedure call with jal/jalr,
# argument and return registers, a counted loop, and correct use
# of the stack.

        .data
n:      .word   5
msg:    .asciz  "Factorial: "

        .text
main:
        lw      a0, n               # a0 = n (the argument)
        jal     ra, factorial       # call factorial(a0); result in a0

        mv      s0, a0              # keep the result safe across the print

        la      a0, msg             # print "Factorial: "
        li      a7, 4
        ecall

        mv      a0, s0              # print the value
        li      a7, 1
        ecall

        li      a7, 10              # exit cleanly
        ecall

# ---------------------------------------------------------------
# factorial(n in a0) -> n! in a0
#
# Uses s1 for the running result. s1 is a callee-saved register,
# so the procedure must preserve it on the stack and restore it
# before returning. This is a leaf procedure - it calls nothing -
# so it does not need to save ra.
# ---------------------------------------------------------------
factorial:
        addi    sp, sp, -4          # make room on the stack
        sw      s1, 0(sp)           # preserve the caller's s1

        li      s1, 1               # result = 1
        li      t1, 2               # i = 2

loop:
        bgt     t1, a0, done        # leave the loop once i > n
        mul     s1, s1, t1          # result = result * i
        addi    t1, t1, 1           # i++
        beq     x0, x0, loop        # repeat

done:
        mv      a0, s1              # place the result where the caller looks

        lw      s1, 0(sp)           # restore the caller's s1
        addi    sp, sp, 4           # release the stack space
        jalr    x0, ra, 0           # return
