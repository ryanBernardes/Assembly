.data
	msg1: .asciiz"\nInsira o valor de um produto entre 1000 e 9999: "
	msg2: .asciiz"\nInforme o valor das parcelas fixas entre 100 e 500: "
	msg3: .asciiz"\nA quantidade de parcelas a ser pagas é: "


.text
main:
repetir:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	
	bge $t0, 1000 teste2
	j repetir
teste2:
	ble $t0, 9999 continua
	j repetir
continua:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	bge $t1, 100 testee2
	j continua
testee2:
	ble $t1, 500 calcular
	j continua
calcular:
	
	div $s0, $t0, $t1 
	rem $s1, $t0, $t1
	bgtz $s1 acrescentar
	j ok
acrescentar:
	add $s3, $s0, 1
	j mostrar
ok:
	add $s3, $s0, 0
mostrar:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	move $a0, $s3
	syscall
