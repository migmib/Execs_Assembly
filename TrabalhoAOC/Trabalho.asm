.data

	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nNúmero inválido digite novamente\n"
	msg3: .asciiz "\nNo intervalo de 1 até "
	msg4: .asciiz " existem "
	msg5: .asciiz " numeros que não são primos"

.text


main:
	li $t5, 1
	li $t6, 0 
	
	
	li $v0, 4
 	la $a0, msg1 
 	syscall 
 	
 	
	li $v0, 5
	syscall
 	move $t0, $v0  
 	
 	
 	blt $t0, 1, errado
 	bgt $t0, 1000, errado
 	
 	j for2
 	
 	
errado: 	
 	li $v0, 4
 	la $a0, msg2
 	syscall 

	j main 
	 
 	
 
for2:
 	bgt $t5, $t0, fim  
 	li $t1 , 2  
 	beq $t5, 1, naoe	
 	j for 	
 		
 			
 					
 for:
 	
 	bge $t1, $t5, primo
 	
 	div $t5, $t1
 	mfhi $t2

  	beq $t2, 0 naoe
  	
 	addi $t1, $t1, 1  
        j for
 
 	 

 		 	  	 	 	 
 primo:
 	addi $t5, $t5, 1  
 	j for2 	
 

 naoe:
 	addi $t6, $t6, 1
	addi $t5, $t5, 1  
 	j for2 	
 
 fim:
 
	li $v0, 4
 	la $a0, msg3 
 	syscall 
 	
 	li $v0, 1
 	move $a0, $t0
 	syscall
 	
 	li $v0, 4
 	la $a0, msg4 
 	syscall 
 	
 	li $v0, 1
 	move $a0, $t6
 	syscall
 	
 	li $v0, 4
 	la $a0, msg5 
 	syscall 
 	
 	li $v0, 10
	syscall
 	
 
 
 	
