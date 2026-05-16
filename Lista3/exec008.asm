.data
    msg1: .asciiz "Valor da compra (1000 a 9999): "
    msg2: .asciiz "Valor da parcela (100 a 500): "
    msg3: .asciiz "Total de parcelas: "

.text
main:
valida_compra:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    blt $t0, 1000, valida_compra
    bgt $t0, 9999, valida_compra

valida_parcela:
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    blt $t1, 100, valida_parcela
    bgt $t1, 500, valida_parcela

    div $t2, $t0, $t1
    rem $t3, $t0, $t1
    
    beq $t3, 0, exibe_parcelas
    addi $t2, $t2, 1

exibe_parcelas:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall
