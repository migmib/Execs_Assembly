.data
    msg1: .asciiz "Digite o numero 1: "
    msg2: .asciiz "Digite o numero 2: "
    msg3: .asciiz "Os numeros sao IGUAIS\n"
    msg4: .asciiz "\nMaior: "
    msg5: .asciiz "\nMenor: "

.text
main:
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

    beq $t0, $t1, iguais
    
    bgt $t0, $t1, t0_maior
    move $t2, $t1
    move $t3, $t0
    j diferentes
    
t0_maior:
    move $t2, $t0
    move $t3, $t1
    
diferentes:
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    j fim
    
iguais:
    li $v0, 4
    la $a0, msg3
    syscall

fim:
    li $v0, 10
    syscall
