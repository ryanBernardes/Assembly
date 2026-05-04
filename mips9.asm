.data
	msg1: .asciiz "\nDigite o Valor a: "
	msg2: .asciiz "\nDigite o Valor b: "
	msg3: .asciiz "\nO resultado da divisão de A por B é: "




.text
main:

	#print(msg1)
	li $v0, 4
	la $a0, msg1
	syscall
	
	#input
	li $v0, 5
	syscall
	add $t0, $v0, 0
enquanto:
	#print(msg2)
	li $v0, 4
	la $a0, msg2
	syscall
	#input
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t1, 0, enquanto
	
	div $s0, $t0, $t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	move $a0, $s0
	syscall
	
	

	