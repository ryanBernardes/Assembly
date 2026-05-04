.data
	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nO dobro do valor é:  "
	msg3: .asciiz "\nO triplo do valor é:  "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	
	bgtz  $t0 se
	j senao
se:
	mul $s1, $t0, 2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	

	j fim
senao:
	mul $s1, $t0, 3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	

fim:
	