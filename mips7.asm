.data
	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nResultado:  "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	rem $s0, $t0, 2
	
	beq $s0, 0, se
	j senao
se:
	add $s1, $t0, 5
	j fim
senao:
	add $s1, $t0, 8
fim:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
