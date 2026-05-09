.data


	msg1: .asciiz "\nCamisetas"
	msg2: .asciiz "\nPequena - 10 REAIS "
	msg3: .asciiz "\nMédia - 12 REAIS"
	msg4: .asciiz "\nGrande - 15 REAIS "
	msg5: .asciiz "\nQuantidade de pequenas: "
    	msg6: .asciiz "\nQuantidade de médias: "
   	msg7: .asciiz "\nQuantidade de grandes: "
   	msgTotal: .asciiz "\nO valor total arrecadado é de  "
   	msg9: .asciiz " REAIS "
	
.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 
	
	li $v0, 4
	la $a0, msg7
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 
	
	mul $t4, $t0, 10 
	mul $t5, $t1, 12 
	mul $t6, $t2, 15
	add $t7, $t4, $t5
	add $s0, $t7, $t6
	
	li $v0, 4
	la $a0, msgTotal
	syscall
	
	li $v0, 1
	add $a0, $s0, 0 
	syscall
	
	li $v0, 4
	la $a0, msg9
	syscall
	
	
