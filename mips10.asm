.data
	msg1: .asciiz "\nDigite o Valor 1: "
	msg2: .asciiz "\nDigite o Valor 2: "
	msg3: .asciiz "\nO resto da divisão do maior pelo menor é: "



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
	
	bgt $t0, $t1, se
	j senao
se:
	div $t2, $t0, $t1
	mul $t3, $t2, $t1
	sub $t4, $t0, $t3
	j fim
senao:
	div $t2, $t1, $t0
	mul $t3, $t2, $t0
	sub $t4, $t1, $t3
fim:

	li $v0, 4        # Syscall para print_string
	la $a0, msg3    
	syscall

	li $v0, 1        # Syscall para print_int
	move $a0, $t4    # Move o resultado para $a0
	syscall
	
	

	