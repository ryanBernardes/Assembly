.data
	msg1: .asciiz "\nDigite o Comprimento do paralelepípedo: "
	msg2: .asciiz "\nDigite a largura do paralelepípedo: "
	msg3: .asciiz "\nDigite a altura do paralelepípedo:  "
	msg4: .asciiz " O volume do paralelepípedo é: "

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
	
	#print(msg3)
	li $v0, 4
	la $a0, msg3
	syscall
	#input
	li $v0, 5
	syscall
	add $t2, $v0, 0
				
	
	mul $s0, $t0, $t1
	mul $s1, $s0, $t2
		

	
	li $v0, 4        
	la $a0, msg4     
	syscall

	li $v0, 1        
	move $a0, $s1   
	syscall
