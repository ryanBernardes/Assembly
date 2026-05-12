.data
	msg1: .asciiz"\nInsira o mês do seu nascimento: "
	msg2: .asciiz"\nInsira o ano do seu nascimento: "
	msg3: .asciiz"\nInsira o mês atual: "
	msg4: .asciiz"\nInsira o ano atual: "
	msg5: .asciiz"\nSua idade em meses é: "
	msg6: .asciiz" Meses"
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
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	sub $t4, $t3, $t1 #anos
	mul $t5, $t4 , 12 #anos em meses
	sub $t6, $t2, $t0
	add $t7, $t5, $t6


	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	move $a0, $t7
	syscall
	
	li $v0, 4
	la $a0, msg6
	syscall
	