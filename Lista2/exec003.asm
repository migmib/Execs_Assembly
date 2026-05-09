.data

	msg1: .asciiz "\nDigite uma valor : "
	msg2: .asciiz "\nDigite outro: "
	msg3: .asciiz "\nA diferensa do seu valor maior pelo menor = "
	
.text

#t2=maior   t3=menor 

main:


	li $t2, 0 
	li $t3, 0
	

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	bge $t0, $t1, if1
	
else1:
	move $t2, $t1
	move $t3, $t0
	
	j calcular

if1:
	
	move $t2, $t0
	move $t3, $t1
	
	
	
calcular:

 	sub $t4, $t2, $t3
 	
 	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
 
 
 
	


	
	
	
	
	
