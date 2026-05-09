.data

	msg1: .asciiz "\nDigite uma valor : "
	msg2: .asciiz "\Digite outro: "
	msg3: .asciiz "\nA diferença do seu valor maior pelo menor é ="
	
.text

#t2=maior   t3=menor 

main:


	li $t2, 0 
	l1 $t3, 0
	

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	mov $t0, $v0
	
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	mov $t1, $v0
	
	bgt $t0, $t1, if1
	
else1:


	mov $t1, $t1
	
	j if2

if1:

	mov $t1, $t0
	
	
	
	
	
	