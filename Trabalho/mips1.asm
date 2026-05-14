.data
	msg1: .asciiz"\nInsira um número maior que 2 e menor que 20: "
	msg2: .asciiz"\nValores impares obtidos das multiplicacoes da serie de fibonacci:\n"
	msg3: .asciiz"\n"
.text
main:
denovo:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	bgt $t0, 2 confere
	j denovo
confere:
	blt $t0, 20 fibonacci
	j denovo

fibonacci:
	li $s0, 0 #a
	li $s1, 1 #b
	li $s2, 0 #contador
	
	li $v0, 4
	la $a0, msg2
	syscall
contador:
	mul $s3, $s0, $s1 
	rem $s4, $s3, 2
	bnez $s4 impar
	j pula
impar:
	li $v0, 1
	move $a0, $s3
	syscall
	li $v0, 4
	la $a0, msg3
	syscall
pula:
	add $s5, $s0, $s1
	add $s0, $s1, 0 
	add $s1, $s5, 0
	addi $s2,$s2, 1
	blt $s2, $t0 contador
fim: 
	li $v0, 10
	syscall
	
	
	
