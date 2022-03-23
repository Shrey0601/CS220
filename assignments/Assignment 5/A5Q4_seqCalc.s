.data
arrayA:	.space 60
nMsg:	.asciiz "Enter p: "
aMsg:	.asciiz "Enter floating point vector b : \n"
eMsg:	.asciiz "Error: n should be positive \n"
endmsg:	.asciiz "The required result is: \n"
.text
.globl main

main:	
    li $v0, 4		# input prompt
	la $a0, nMsg
	syscall
	li $v0, 5		# read_int
	syscall
	add $t0, $v0, $0	# $t0 -> n

	slti $t1, $t0,1		# error check
	beq $t1, $0, valid
	li $v0, 4
	la $a0, eMsg
	syscall
	jr $ra

valid:	
    li $v0, 4		# Array prompt
	la $a0, aMsg
	syscall
	
	la $t1, arrayA		# $t1 -> arrayA
	xor $t2, $t2, $t2	# $t2 -> i
	li $v0, 6		# read_float

loop:	
    sll $t3, $t2, 2		# i*4
	add $t3, $t1, $t3	# A[i] = A + i*4
	syscall
	swc1 $f0, 0($t3)
	addi $t2, $t2, 1
	slt $t3, $t2, $t0	# i < n
	bne $t3, $0, loop

	xor $t2, $t2, $t2	# i = 0
	mtc1 $t2, $f12		# sum = 0

loop2:	
    sll $t3, $t2, 2
	add $t3, $t1, $t3
	lwc1 $f0, 0( $t3 )
	andi $t3, $t2, 1	# i&1
	beq $t3, $0, even
	sub.s $f12, $f12, $f0	# (-1)^odd
	j Check

even:	
	add.s $f12, $f12, $f0	# (-1)^even

Check:	
    addi $t2, $t2, 1
	slt $t3, $t2, $t0	# i < n
	bne $t3, $0, loop2

	li $v0, 4		# End message
	la $a0, endmsg
	syscall

	li $v0, 2		# print_float
	syscall

	xor $v0, $v0, $v0
	jr $ra
	
