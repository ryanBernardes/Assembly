.data
	msg1: .asciiz"\nDigite o valor 1: "
	msg2: .asciiz"\nDigite o valor 2: "
	msg3: .asciiz"\nSão Iguias"
	msg4: .asciiz"\nSão Diferentes"
	msg5: .asciiz"\nMaior: "
	msg6: .asciiz" Menor: "
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
	
	beq $t0, $t1 iguais
	j diferentes
iguais:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
diferentes:
	bgt $t0, $t1 maior
	j menor
maior:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, msg6
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	j fim
menor:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, msg6
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
fim:
	
	