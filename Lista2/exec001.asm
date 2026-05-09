.data

	msg1: .asciiz "\nDigite a largura do seu Paralelepípedo: "
	msg2: .asciiz "\nDigite o comprimento do seu Paralelepípedo: "
	msg3: .asciiz "\nDigite a altura  do seu Paralelepípedo: "
	msg4: .asciiz "\nO volume do seu Paralelepípedo é = "
	msg5: .asciiz " metros cubicos"
	
.text

main:
#entradas
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
	
	
	mul $t3, $t0, $t1
	mul $t4, $t3, $t2
	
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1 
	add  $a0, $t4, 0 
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	