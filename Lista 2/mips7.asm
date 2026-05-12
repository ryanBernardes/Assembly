.data
	msg1: .asciiz"\nInsira um valor entre 100 e 999: "
	msg2: .asciiz"\nCENTENA = "
	msg3: .asciiz"\nDEZENA = "
	msg4: .asciiz"\nUNIDADE = "

.text
main:
repetir:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bge $t0, 100 teste2
	j repetir
teste2:
	ble $t0, 999 continua
	j repetir
continua:
	div $s0, $t0, 100 #centena $s0
	rem $s1, $t0, 100
	div $s2, $s1, 10 #resto da centena/10 = dezena $s2
	rem $s3, $s1, 10 # resto da dezena = unidade $s3
	
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
	move $a0, $s2
	syscall

	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	move $a0, $s3
	syscall
	