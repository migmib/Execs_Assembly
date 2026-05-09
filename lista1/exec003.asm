.data

	msg1: .asciiz "\nQuantas horas vc trabalhou ?\n"
	msg2: .asciiz "\nQuantas tempo de hora extra vc trabalhou ?\n"
	msg3: .asciiz "\nQunato de desconto vc teve?\n"
	msg4: .asciiz "\nSeu salário bruto: "
	msg5: .asciiz "\nSeu salário liquído: "
	
	
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
	
	li  $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 
	
	mul $t3, $t0, 10 #conta horas 
	mul $t4, $t1, 15 # conta hora extra 
	add $t5, $t3, $t4 # salario bruto
	sub $t6, $t5, $t2 # salario liqui
	
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t5, 0 
	syscall
	
	
	
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t6, 0 
	syscall
	
	
	
