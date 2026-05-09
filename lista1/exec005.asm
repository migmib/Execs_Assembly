.data


	msg1: .asciiz "\n Digite o seu cateto 1 : "
	msg2: .asciiz "\n Digite o seu cateto 2 : "
	msg3: .asciiz "\n Sua hipotenusa vale : "
	msg4: .asciiz " metros"
	
	
	
.text

	
 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 6
 	syscall
 	mov.s  $f1, $f0 
 	
 	
 	li $v0, 4
 	la $a0 msg2
 	syscall
 	
 	li $v0, 6
 	syscall
 	mov.s $f2, $f0 
 	
 	mul.s $f3, $f1, $f1 # cateto1
 	mul.s $f4, $f2, $f2 # cateto2
 	add.s $f5, $f3, $f4 #soma dos catetos
 	sqrt.s $f6, $f5 #raiz quadrada 
 	
 	li $v0, 4
 	la $a0, msg3
 	syscall
 	
 	li $v0, 2
 	mov.s $f12, $f6
 	syscall
 	
 	li $v0, 4
 	la $a0, msg4
 	syscall
 	
 	
