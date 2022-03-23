    .data
arr: .space 40
space: .asciiz " "
prompt: .asciiz "Enter 10 values:"
newline: .asciiz "\n"
soln: .asciiz "The sorted elements are :- \n"
    .text
	.globl main
main:
# prompt
    li $v0, 4
    la $a0, prompt
    syscall
# new line
    li $v0, 4
    la $a0, newline
    syscall
    addi $t0, $zero, 0
# taking input
takein:

    beq $t0, 40, iSort
    # reading input elements of the array to be sorted
    li $v0, 5
	syscall
    # add value to array that is to be sorted
    sw $v0, arr($t0)
    # update
    addi $t0, $t0, 4
    j takein

# insertion sort
iSort:
    addi $t0, $zero, 4
    # first loop for sort operation
    while1:
        beq $t0, 40, print
        lw $s0, arr($t0)
        addi $t1, $t0, -4
        # second loop for sort operation
        while2:
            # first exit condition
            beq $t1, -4, exit2
            lw $t3, arr($t1)
            slt $t2, $s0, $t3
            # second exit condition
            beq $t2, 0, exit2

            # updating value in the array so as to sort it
            lw $s1, arr($t1)
            addi $t1, $t1, 4
            sw $s1, arr($t1)
            addi $t1, $t1, -8
            j while2
        exit2:
            addi $t0, $t0, 4
            addi $t1, $t1, 4
            sw $s0, arr($t1)
            j while1



# printing the array
print:
    addi $t1, $zero, 0
    li $v0, 4
    la $a0, soln
    syscall
    while:
        beq $t1, 40, oute
        # printing the elements of the sorted array
        lw $a0, arr($t1)
        li $v0, 1
        syscall
        # giving spaces between elements
        li $v0, 4
        la $a0, space
        syscall

        addi $t1, $t1, 4
        j while

# exit
oute:
    jr $ra
