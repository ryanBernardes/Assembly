.data
	msg1: .asciiz "\nDigite a Quantidade de Horas normais trabalhadas: "
	msg2: .asciiz "\nDigite a Quantidade de Horas extras trabalhadas: "
	msg3: .asciiz "\nDigite o valor que é descontado: "
	msg4: .asciiz " O Sálario Bruto é R$"
	msg5: .asciiz " O Sálario Liquido é R$"

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
				

	mul $s0, $t0, 10
	mul $s1, $t1, 15
	
	add $t3, $s0, $s1
	sub $t4, $t3, $t2	

	
	li $v0, 4        # Syscall para print_string
	la $a0, msg4     # Carrega endereço da msg4
	syscall

	li $v0, 1        # Syscall para print_int
	move $a0, $t3    # Move o resultado para $a0
	syscall
	
	li $v0, 4       
	la $a0, msg5     
	syscall

	li $v0, 1        
	move $a0, $t4    
	syscall

	