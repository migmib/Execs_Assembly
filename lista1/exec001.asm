#exemplo
.data

	msg1: .asciiz "\n Digite o comprimento do seu terreno:"
	msg2: .asciiz "\n Digite a largura do seu terreno:"
	msg3: .asciiz " A área do seu terreno é: \n "
	msg4: .asciiz " metros"
.text
main:

	li $v0, 4 
	la $a0, msg1 
	syscall
	
	li $v0, 5
	add $t0, $v0, 0 
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5 
	add $t1, $v0 , 0 
	syscall
	
	mul $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1 
	add $a0, $t2, 0 
	syscall
	
	li $v0, 4 
	la $a0, msg4
	syscall
	
	
	
	
	
