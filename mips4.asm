.data
	msg1: .asciiz "\nDigite o Valor da Base maior: "
	msg2: .asciiz "\nDigite o Valor da Base menor: "
	msg3: .asciiz "\nDigite o valor da altura: "
	msg4: .asciiz " A área do Trapézio é "


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
				

	add $s0, $t0, $t1
	mul $s1, $s0, $t2
	
	div $s3, $s1, 2
		

	
	li $v0, 4        # Syscall para print_string
	la $a0, msg4     # Carrega endereço da msg4
	syscall

	li $v0, 1        # Syscall para print_int
	move $a0, $s3    # Move o resultado para $a0
	syscall
	
	

	