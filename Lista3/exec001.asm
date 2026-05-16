.data
    msg_dolar: .asciiz "Digite o valor em dolar: "
    msg_real:  .asciiz "Valor em real: R$"

.text
main:
    li $v0, 4
    la $a0, msg_dolar
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0
    
    mul $t1, $t0, 5
    
    li $v0, 4
    la $a0, msg_real
    syscall
    
    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 10
    syscall
