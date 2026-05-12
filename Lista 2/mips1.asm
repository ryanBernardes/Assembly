.data
	msg1: .asciiz"\nInsira um valor em US$ para converter para R$: "
	msg2: .asciiz"\nA conversão do valor em reais é de: R$"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	mul $t1, $t0, 5
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall