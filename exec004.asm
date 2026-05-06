.data


	msg1: .asciiz "\n Digite a base maior do seu trapézio: "
	msg2: .asciiz "\n Digite a base menor do seu trapézio: "
	msg3: .asciiz "\n Digite a altura do seu trapézio: "
	msg4: .asciiz "\n Seu trapézio tem uma área de  "
	msg5: .asciiz " metros"
	
	
	
.text
main:
 	
 	
 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t0, $v0, 0 
 	
 	li $v0, 4 
 	la $a0 msg2
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t1, $v0, 0 
 	
 	
 	li $v0, 4 
 	la $a0 msg3
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t2, $v0, 0 
 	
 	
 	add $t3, $t0, $t1
 	mul $t4, $t3, $t2
 	div $t5, $t4, 2 
 	
 	
 	li $v0, 4 
 	la $a0 msg4
 	syscall
 	
 	li $v0, 1
 	add $a0, $t5, 0 
 	syscall
 	
 	li $v0, 4 
 	la $a0 msg5
 	syscall
 	
 	
 	
 	