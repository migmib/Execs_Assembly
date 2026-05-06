.data


	msg1: .asciiz "\nDigite o seu primeiro número : "
	msg2: .asciiz "\nO seu valor é posivito, o dobro dele é =  "
	msg3: .asciiz "\nO seu valor é neagtivo, o triplo dele é = "
	
	
.text


 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t0, $v0 0 
 	
 	
 	
 	bge $t0, 0, if 
 	
 	else:
 	mul $t1, $t0, 3
 	
 	li $v0, 4
 	la $a0, msg3
 	syscall
 	
 	li $v0, 1
 	add $a0, $t1, 0 
 	syscall
 	 
 	j fim 
 	
 	
 	
 	
 	if:
 	mul $t1, $t0, 2 
 	
 	li $v0, 4 
 	la $a0 msg2
 	syscall
 	
 	li $v0, 1
 	add $a0, $t1, 0 
 	syscall
 	
 	
 	fim: