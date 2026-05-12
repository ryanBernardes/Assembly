.data
	msg1: .asciiz "\nDigite a Nota 1: "
	msg2: .asciiz "\nDigite a Nota 2: "
	msg3: .asciiz "\nDigite a Nota 3: "
	msg4: .asciiz "\nDigite a nota 4: "
	msg5: .asciiz "\nA média é: "
	msg6: .asciiz "\nAprovado"
	msg7: .asciiz "\nExame"
	msg8: .asciiz "\nRetido"
	

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
	
		
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0	
	
	mul $s0, $t0, $t1
	mul $s1, $s0, $t2
	mul $s2, $s1, $t3
	
	li $v0, 4        
	la $a0, msg5     
	syscall

	li $v0, 1        
	move $a0, $t2  
	syscall
	
	bge $t2, 6 se
	j senaose
se:
	li $v0, 4        
	la $a0, msg6 
	syscall
	j fim
senaose:
	bge $t2, 3 senaosese
	j senao
senaosese:
	blt $t2, 6 mostrasenaosese
	j fim
mostrasenaosese:
	li $v0, 4        
	la $a0, msg7
	syscall
	j fim
senao:
	li $v0, 4        
	la $a0, msg8
	syscall
	j fim
fim:
	
	
