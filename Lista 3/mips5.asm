.data
	msg1: .asciiz "\nDigite o valor 1: "
	msg2: .asciiz "\nDigite o valor 2: "
	msg3: .asciiz "\nA somatória dos números ímpares entre o menor e o maior número é: "
	

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
	add $s1, $t0,0 #maior
	add $s0, $t1,0 #menor
	j continuacao
senao:
	add $s1, $t1,0 #maior
	add $s0, $t0,0	#menor
	j continuacao
	

continuacao:
	add $t4,$s0,1
	li $s3, 0
enquanto:
	rem $t5, $t4, 2
	bnez $t5 see
	j fimse
see:
	add $s3,$s3 ,$t4
	
fimse:
	addi $t4, $t4, 1
	blt  $t4, $s1, enquanto
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall