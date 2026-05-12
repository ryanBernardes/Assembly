.data
	msg1: .asciiz"\nInsira o valor de a: "
	msg2: .asciiz"\nInsira o valor de b: "
	msg3: .asciiz"\nInsira o valor de c: "
	msg4: .asciiz"\nDuas raízes reais"
	msg5: .asciiz"\nUma raíz real"
	msg6: .asciiz"\nNão existem raízes reais"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	#formula delta b2 - 4 x A x C
	#s0 delta
	#s1 A
	#s2 B
	#s3 C
	mul $s2, $t1, $t1 #B ao quadrado
	mul $s1, $t0, 4   #4 x A
	mul $s3, $t2, $s1 #resultado de 4xA x C
	sub $s0, $s2, $s3
	
	bgtz $s0 se
	j senaose
se: 
	li $v0, 4
	la $a0, msg4
	syscall
	j fim
senaose:
	beqz $s0 facasenaose
	j senao
facasenaose:
	li $v0, 4
	la $a0, msg5
	syscall
	j fim
senao:
	bltz $s0 facasenao
facasenao:
	li $v0, 4
	la $a0, msg6
	syscall
	
fim:
	
	