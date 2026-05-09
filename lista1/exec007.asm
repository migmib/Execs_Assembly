.data


	msg1: .asciiz "\nDigite o seu primeiro número : "
	msg2: .asciiz "\nO seu valor é par, aqui esta ele somado com 5 : \n"
	msg3: .asciiz "\nO seu valor é impar, aqui esta ele somado com 8 : \n"
	
	
	
.text


 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t0, $v0 0 
 	
 	li $t1, 2
 	div $t0, $t1
 	
 	mfhi $t2
 	
 	
 	beq $t2, 0, if 
 	
 	else:
 	
 		
 	add $t3, $t0, 8 
 	
 	li $v0, 4 
 	la $a0 msg3
 	syscall
 	
 	li $v0,1 
 	add $a0, $t3, 0 
 	syscall
 	 j fim 
 	
 	
 	
 	if:
 	
 	add $t3, $t0, 5 
 	
 	li $v0, 4 
 	la $a0 msg2
 	syscall
 	
 	li $v0,1 
 	add $a0, $t3, 0 
 	syscall
 	
 	fim:
 	
 	
 	
 	
 	
 	
