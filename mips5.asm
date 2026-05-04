.data
	msg1: .asciiz "\nDigite o Valor do Cateto 1: "
	msg2: .asciiz "\nDigite o Valor do Cateto 2: "
	msg3: .asciiz "\nO valor da hipotenuza é: "



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
	
	mul $s0, $t0, $t0
	mul $s1, $t1, $t1
	add $s2, $s0, $s1
	# converter int -> float
	mtc1 $s2, $f0
	cvt.s.w $f0, $f0

	# raiz quadrada
	sqrt.s $f2, $f0

	
	li $v0, 4        # Syscall para print_string
	la $a0, msg3     # Carrega endereço da msg4
	syscall

	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	

	