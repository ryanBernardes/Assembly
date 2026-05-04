.data
	msg1: .asciiz "\nDigite a Frente (Largura) do Terreno: "
	msg2: .asciiz "\nDigite o Comprimento (Fundo) do Terreno: "
	msg3: .asciiz "\nA área do terreno é de: "
	msg4: .asciiz " metros"

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
				
	#valor da area
	mul $t2, $t0, $t1	

	
	li $v0, 4        # Syscall para print_string
	la $a0, msg3     # Carrega endereço da msg3
	syscall

	li $v0, 1        # Syscall para print_int
	move $a0, $t2    # Move o resultado (área) para $a0
	syscall

	li $v0, 4        # Syscall para print_string
	la $a0, msg4     # Carrega endereço da msg4 (" metros")
	syscall	