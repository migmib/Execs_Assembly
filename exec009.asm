.data


	msg1: .asciiz "\n Digite o seu primeiro número : "
	msg2: .asciiz "\n Digite o seu segundo número  : "
	msg3: .asciiz "\n Resultado =   : "
	
	erro: .asciiz "\nVALOR INVÁLIDO "
	
	
	
.text


 	li $v0, 4 
 	la $a0 msg1
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t0, $v0 0 
 	
segundo:
 	li $v0, 4 
 	la $a0 msg2
 	syscall
 	
 	li $v0, 5
 	syscall
 	add $t1, $v0 0 
 	
 	beq $t1, 0, valorIncorreto
 	
 	j divisao
 	
 	
 	
valorIncorreto:
 
 	li $v0, 4 
 	la $a0 erro
 	syscall
 	
 	j segundo
 	
 	
divisao:
 
 	div $t2, $t0, $t1
 	
 	li $v0, 4 
 	la $a0, msg3
 	syscall
 	
 	li $v0, 1
 	add $a0, $t2, 0 
 	syscall
 	
 	j fim
 	
fim: