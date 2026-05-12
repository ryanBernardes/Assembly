.data
	msg1: .asciiz "\nDigite o raio da circunferência: "
	msg2: .asciiz "\nO comprimento da circunferência é: "
	

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
	
				
	
	mul $s0, $t0, 3
	mul $s1, $s0, 2
		

	
	li $v0, 4        
	la $a0, msg2 
	syscall

	li $v0, 1        
	move $a0, $s1
	syscall
