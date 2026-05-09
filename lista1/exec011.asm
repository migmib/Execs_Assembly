.data

 msg1: .asciiz "\nDigite um valor:\n"
 msg2: .asciiz "\nIntervalo entre 0-25: "
 msg3: .asciiz "\nIntervalo entre 26-50: "
 msg4: .asciiz "\nIntervalo entre 51-75: "
 msg5: .asciiz "\nIntervalo entre 76-100: "
 




.text
main:
leitura:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	
	blt $v0, 0, fim

	li $t5, 25
	ble $t0, $t5,cont1
	
	li $t5, 50
	ble $t0, $t5,cont2
	
	li $t5, 75
	ble $t0, $t5,cont3
	
	li $t5, 100
	ble $t0, $t5,cont4
	
	j leitura
	
	
cont1:
	add $t1, $t1, 1
	j leitura

cont2:
	add $t2, $t2, 1
	j leitura

cont3:
	add $t3, $t3, 1
	j leitura

cont4:
	add $t4, $t4, 1
	j leitura
	
fim: #mostrando
	li $v0, 4
	la $a0, msg2 
	syscall
	
	li $v0, 1
	add $a0, $t1, 0 
	syscall
	
	li $v0, 4
	la $a0, msg3 
	syscall
	
	li $v0, 1
	add $a0, $t2, 0 
	syscall

	li $v0, 4
	la $a0, msg4 
	syscall
	
	li $v0, 1
	add $a0, $t3, 0 
	syscall

	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0 
	syscall


