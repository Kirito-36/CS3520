# CS3520 - Worked example 3: count the even elements of an array
# RISC-V assembly translation of count-even.cpp
#
# Demonstrates: .data storage, array indexing, a counted loop,
# andi for the bit test, and conditional branches.

        .data
array:  .word   8, 3, 14, 5, 22, 9, 6, 11
n:      .word   8
msg:    .asciz  "Even count: "

        .text
main:
        la      t0, array           # t0 = base address of the array
        lw      t1, n               # t1 = number of elements
        li      s0, 0               # count = 0
        li      t2, 0               # i = 0

loop:
        bge     t2, t1, done        # leave the loop once i >= n
        slli    t3, t2, 2           # t3 = i * 4  (word offset)
        add     t4, t0, t3          # t4 = &array[i]
        lw      t5, 0(t4)           # t5 = array[i]
        andi    t6, t5, 1           # t6 = lowest bit of array[i]
        bne     t6, x0, skip        # bit set means odd - skip it
        addi    s0, s0, 1           # even, so count++
skip:
        addi    t2, t2, 1           # i++
        beq     x0, x0, loop        # repeat

done:
        la      a0, msg             # print "Even count: "
        li      a7, 4
        ecall

        mv      a0, s0              # print the count
        li      a7, 1
        ecall

        li      a7, 10              # exit cleanly
        ecall
