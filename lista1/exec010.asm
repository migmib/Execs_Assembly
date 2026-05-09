.data


	msg1: .asciiz "\n Digite o seu primeiro número : "
	msg2: .asciiz "\n Digite o seu segundo número  : "
	msg3: .asciiz "\n Resto da divisao = "
	

	
.text


 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t0, $v0 0 
 	
 	
 	li $v0, 4 
 	la $a0 msg2
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t1, $v0 0 
 	
 	bgt $t0, $t1, calcular
 	
 arrumando:
 	
 	add $t2, $t0, 0 
 	add $t0, $t1, 0 
 	add $t1, $t2, 0 
 	
 	
 	
 calcular:
 	
 	div $t3, $t0, $t1
 	mflo $t4
 	
 	mul $t5, $t4, $t1
 	
 	sub $t6, $t0, $t5
 	
 	li $v0, 4
 	la $a0, msg3 
 	syscall
 	
 	li $v0, 1
 	add $a0, $t6, 0 
 	syscall
 	

 
 fim:
 	
 	
 	
 	
 	
 	
