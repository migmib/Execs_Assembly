.data
    msg1: .asciiz "Coeficiente A: "
    msg2: .asciiz "Coeficiente B: "
    msg3: .asciiz "Coeficiente C: "
    msg4: .asciiz "DUAS RAIZES REAIS\n"
    msg5: .asciiz "UMA RAIZ REAL\n"
    msg6: .asciiz "NAO EXISTEM RAIZES REAIS\n"

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

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    mul $t3, $t1, $t1
    mul $t4, $t0, $t2
    mul $t4, $t4, 4
    sub $t5, $t3, $t4

    bgt $t5, 0, duas_raizes
    beq $t5, 0, uma_raiz
    j zero_raizes
    
duas_raizes:
    li $v0, 4
    la $a0, msg4
    syscall

    j fim

uma_raiz:
    li $v0, 4
    la $a0, msg5
    syscall

    j fim

zero_raizes:
    li $v0, 4
    la $a0, msg6
    syscall

fim:
    li $v0, 10
    syscall
