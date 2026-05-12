.data
	msg1: .asciiz "\nDigite o valor 1: "
	msg2: .asciiz "\nDigite o valor 2: "
	msg3: .asciiz "\nA diferenca do maior pelo menor e: "
	

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
	
	#print(msg2)
	li $v0, 4
	la $a0, msg2
	syscall
	#input
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	
	bgt $t0, $t1 se			
	j senao
se:
	sub $s0, $t0, $t1
	j fim
senao:
	sub $s0, $t1, $t0	

fim:
	li $v0, 4        
	la $a0, msg3   
	syscall

	li $v0, 1        
	move $a0, $s0   
	syscall
