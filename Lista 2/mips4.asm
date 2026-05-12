.data
	msg1: .asciiz"\nInsira o salário atual: "
	msg2: .asciiz"\nO valor do sálario após o reajuste será de: R$"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	mul $t1, $t0, 25
	div $t2, $t1, 100
	add $t3, $t0, $t2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall