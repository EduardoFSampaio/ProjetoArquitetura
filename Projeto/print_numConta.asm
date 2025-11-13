# Parametros -> $a0 - endereco de conta na memoria;
.globl print_numConta

.text
	print_numConta:
    		li $v0, 11	# Codigo do syscall para imprimir um caractere
    		li $t1, 8       # Número de bytes a serem impressos
    		la $t5, 0($a0)	# Guarda em $t5 o endereco do inicio do numero da conta do cliente, clientes[numCliente].conta[0]

		printLoop:
    			lb $t2, 0($t5)	# Carrega o byte da posição atual
    			move $a0, $t2   # Move o byte para $a0 (argumento do syscall)
    			syscall

    			addi $t5, $t5, 1	# Avança para o próximo byte

    			addi $t1, $t1, -1	# Decrementa o contador de bytes
    			bnez $t1, printLoop     # Se ainda não foram impressos todos os bytes, continua o loop

    		jr $ra		# Jump para a funcao cadastrarCliente