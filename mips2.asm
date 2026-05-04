.data
	msg1: .asciiz "\nDigite a Quantidade de Camisetas Pequenas: "
	msg2: .asciiz "\nDigite a Quantidade de Camisetas Medias: "
	msg3: .asciiz "\nDigite a Quantidade de Camisetas Grandes: "
	msg4: .asciiz " O valor final é de R$"

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
				
	#valor da venda
	#valor das camisetas
	mul $s0, $t0, 10
	mul $s1, $t1, 12
	mul $s2, $t2, 15
	add $t3, $s0, $s1
	add $t4, $s2, $t3	

	
	li $v0, 4        # Syscall para print_string
	la $a0, msg4     # Carrega endereço da msg4
	syscall

	li $v0, 1        # Syscall para print_int
	move $a0, $t4    # Move o resultado para $a0
	syscall

	