.data
	msg1: .asciiz "\nDigite um numero de 0 a 100: "
	msg2: .asciiz "\nQuantidade de numeros por periodo: \n"
	msg3: .asciiz " Entre 0-25\n"
	msg4: .asciiz " Entre 26-50\n"
	msg5: .asciiz " Entre 51-75\n"
	msg6: .asciiz " Entre 76-100\n"

.text
main:

	# contadores
	li $s0, 0   # 0-25
	li $s1, 0   # 26-50
	li $s2, 0   # 51-75
	li $s3, 0   # 76-100

loop:
	# print
	li $v0, 4
	la $a0, msg1
	syscall
	
	# input
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# se negativo  fim
	bltz $t0, fim
	
	# se > 100  erro
	li $t1, 100
	bgt $t0, $t1, loop
	
	
	# intervalo 0-25
	ble $t0, 25, caso1
	
	# intervalo 26-50
	ble $t0, 50, caso2
	
	# intervalo 51-75
	ble $t0, 75, caso3
	
	# intervalo 76-100
	ble $t0, 100, caso4
	
	j loop

caso1:
	addi $s0, $s0, 1
	j loop

caso2:
	addi $s1, $s1, 1
	j loop

caso3:
	addi $s2, $s2, 1
	j loop

caso4:
	addi $s3, $s3, 1
	j loop

fim:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1    
	move $a0, $s0   
	syscall
	li $v0, 4
	la $a0, msg3
	syscall	
	
	
	
	li $v0, 1    
	move $a0, $s1    
	syscall
	li $v0, 4
	la $a0, msg4
	syscall
	
	
	li $v0, 1    
	move $a0, $s2    
	syscall
	li $v0, 4
	la $a0, msg5
	syscall	
	
	
	li $v0, 1    
	move $a0, $s3    
	syscall
	li $v0, 4
	la $a0, msg6
	syscall	
	