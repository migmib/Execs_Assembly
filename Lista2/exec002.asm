.data

	msg1: .asciiz "\nDigite o raio da sua circuferencia: "
	msg2: .asciiz "\o comprimento do seu circulo é = "
	msg3: .asciiz " metros"
	
.text

main:
#entradas
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 
	
	mul $t2, $t0, 6
	
	li, $v0, 4
	la $a0, msg2 
	syscall
	
	li, $v0, 1
	add $a0, $t2, 0
	syscall
	
	li, $v0, 4
	la $a0, msg3
	syscall
	
	
	