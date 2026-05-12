.data
	msg1: .asciiz"\nInsira o valor 1: "
	msg2: .asciiz"\nInsira o valor 2: "
	msg3: .asciiz"\nApós a Troca: "
	msg4: .asciiz"\nvalor 1: "
	msg5: .asciiz"\nvalor 2: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	add $t2, $t1, 0
	add $t1, $t0, 0
	add $t0, $t2, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall