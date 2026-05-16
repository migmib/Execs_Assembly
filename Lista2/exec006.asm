.data
    msg_val: .asciiz "\nDigite um valor positivo: "
    msg_ma:  .asciiz "\nMaior valor: "
    msg_me:  .asciiz "\nMenor valor: "

.text
main:
    li $t0, 0        
    li $t1, -1       
    li $t2, 2147483647 

loop_10:
    beq $t0, 10, resultados
    
    li $v0, 4
    la $a0, msg_val
    syscall

    li $v0, 5
    syscall
    move $t3, $v0    
    
    bltz $t3, loop_10 

    ble $t3, $t1, skip_maior
    move $t1, $t3
skip_maior:

    bge $t3, $t2, skip_menor
    move $t2, $t3
skip_menor:

    addi $t0, $t0, 1  
    j loop_10

resultados:
    li $v0, 4
    la $a0, msg_ma
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 4
    la $a0, msg_me
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall
