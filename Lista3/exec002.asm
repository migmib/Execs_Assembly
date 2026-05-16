.data
    msg_v1:   .asciiz "Digite o valor 1: "
    msg_v2:   .asciiz "Digite o valor 2: "
    msg_out1: .asciiz "\nRegistrador 1: "
    msg_out2: .asciiz "\nRegistrador 2: "

.text
main:
    li $v0, 4
    la $a0, msg_v1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0
    
    li $v0, 4
    la $a0, msg_v2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0
    
    move $t2, $t0
    move $t0, $t1
    move $t1, $t2
    
    li $v0, 4
    la $a0, msg_out1
    syscall

    li $v0, 1
    move $a0, $t0
    syscall
    
    li $v0, 4
    la $a0, msg_out2
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 10
    syscall
