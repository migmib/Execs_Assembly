.data
    msg_nota: .asciiz "\nDigite uma nota: "
    msg_ap:   .asciiz "\nAPROVADO"
    msg_ex:   .asciiz "\nEXAME"
    msg_re:   .asciiz "\nRETIDO"

.text
main:
    li $t1, 0        
    li $t2, 0        

loop_notas:
    beq $t2, 4, calc_media
    
    li $v0, 4
    la $a0, msg_nota
    syscall
    
    li $v0, 5        
    syscall
    
    add $t1, $t1, $v0 
    addi $t2, $t2, 1  
    j loop_notas

calc_media:
    div $t0, $t1, 4  

    bge $t0, 6, aprovado
    bge $t0, 3, exame
    j retido

aprovado:
    li $v0, 4
    la $a0, msg_ap
    syscall
    j fim

exame:
    li $v0, 4
    la $a0, msg_ex
    syscall
    j fim

retido:
    li $v0, 4
    la $a0, msg_re
    syscall

fim:
    li $v0, 10       
    syscall