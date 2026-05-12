.data
	msg1: .asciiz"\nInsira um número inteiro positivo: "

	msg2: .asciiz"\nO Maior número é: "
	msg3: .asciiz"\nO Menor número é: "
.text
main:
	
negativo:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bltz $t0 negativo
	
	#definir maior e menor
	add $t2, $t0, 0 #maior
	add $t1, $t0, 0 #menor
	
	li $s0, 2
enquanto:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	bltz $t0 se
	j fimse
se:
	j enquanto
fimse:
	bgt $t0, $t2 semaior
	j semenor
semaior:
	add $t2, $t0, 0
semenor:
	blt $t0, $t1 faca
	j fimmaiormenor
faca:
	add $t1, $t0, 0
fimmaiormenor:
	addi $s0, $s0, 1
	ble  $s0, 10 enquanto
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0 1
	move $a0, $t1
	syscall
	
	
