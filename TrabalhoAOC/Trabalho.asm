.data
	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nNúmero inválido, digite novamente\n"
	msg3: .asciiz "\nNo intervalo de 1 até "
	msg4: .asciiz " existem "
	msg5: .asciiz " numeros que não são primos\n"

.text
main:
	li $t5, 1        # $t5 = contador do loop (começa em 1)
	li $t6, 0        # $t6 = contador de não-primos
	
	# Exibe mensagem de entrada
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Lê o número digitado
	li $v0, 5
	syscall
	move $t0, $v0    # $t0 = número digitado pelo usuário
	
	# Valida: número deve ser > 1 e < 10000
	blt $t0, 2, errado
	bge $t0, 10000, errado
	
	j for2

errado:
	li $v0, 4
	la $a0, msg2
	syscall
	j main           # Solicita novo número

# Loop externo: percorre de 1 até $t0
for2:
	bgt $t5, $t0, fim    # Se $t5 > $t0, terminou

	beq $t5, 1, naoe     # 1 não é primo → conta como não-primo

	li $t1, 2            # $t1 = divisor, começa em 2
	j for

# Loop interno: testa se $t5 é primo
for:
	bge $t1, $t5, primo  # Se divisor >= número, é primo

	div $t5, $t1
	mfhi $t2
	beq $t2, 0, naoe     # Se resto == 0, não é primo

	addi $t1, $t1, 1     # Próximo divisor
	j for

primo:
	addi $t5, $t5, 1     # Avança para o próximo número
	j for2

naoe:
	addi $t6, $t6, 1     # Incrementa contador de não-primos
	addi $t5, $t5, 1     # Avança para o próximo número
	j for2

fim:
	# Exibe: "No intervalo de 1 até X"
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	# Exibe: " existem Y"
	li $v0, 4
	la $a0, msg4
	syscall

	li $v0, 1
	move $a0, $t6
	syscall

	# Exibe: " numeros que não são primos"
	li $v0, 4
	la $a0, msg5
	syscall

	li $v0, 10
	syscall
