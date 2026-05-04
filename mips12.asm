.data
	msg1: .asciiz "\nDigite a altura em cm: "
	msg2: .asciiz "\nA maior altura é: "
	msg3: .asciiz "\nA menor altura é: "

.text
main:

	# primeira leitura
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	move $t1, $t0   # maior
	move $t2, $t0   # menor
	
	li $s0, 1       # contador

enquanto:
	bgt $s0, 14, fim

	# leitura
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0

	# verifica maior
	bgt $t0, $t1, maior
	j verificaMenor

maior:
	move $t1, $t0

verificaMenor:
	# verifica menor
	blt $t0, $t2, atualizaMenor
	j continua

atualizaMenor:
	move $t2, $t0

continua:
	addi $s0, $s0, 1
	j enquanto

fim:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall