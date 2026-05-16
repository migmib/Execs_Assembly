.data
    msg_n1:   .asciiz "\nDigite o primeiro valor: "
    msg_n2:   .asciiz "\nDigite o segundo valor: "
    msg_res:  .asciiz "\nA soma dos ímpares entre eles = "

.text
main:
    li $v0, 4
    la $a0, msg_n1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0    

    li $v0, 4
    la $a0, msg_n2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0    

    bge $t0, $t1, t0_maior
    move $t2, $t0
    move $t3, $t1
    j somatorio

t0_maior:
    move $t2, $t1
    move $t3, $t0

somatorio:
    li $t4, 0        
    move $t5, $t2    

loop_soma:
    bgt $t5, $t3, print_soma
    
    rem $t6, $t5, 2
    beq $t6, 0, proximo
    add $t4, $t4, $t5

proximo:
    addi $t5, $t5, 1
    j loop_soma

print_soma:
    li $v0, 4
    la $a0, msg_res
    syscall
    li $v0, 1
    move $a0, $t4
    syscall
    
    li $v0, 10
    syscall
