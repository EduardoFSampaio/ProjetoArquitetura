.data
    	str1: .asciiz "Briga"	# String1 que vai passar pela funcao para teste.
    	str2: .asciiz "Breno"	# String2 que vai passar pela funcao para teste.
    	result_igual: .asciiz "As duas strings sao iguais ate a letra nº "
    	result_maior: .asciiz "A string1 > string2 na letra nº "
    	result_menor: .asciiz "A string1 < string2 na letra nº "

.macro print_int(%inteiro)
	addi $v0, $0, 1		# Codigo do syscall para imprimir um inteiro
    	add $a0, $0, %inteiro	# Coloque o valor a ser impresso em $a0 
    	syscall
.end_macro

.macro print_str(%string)
	addi $v0, $0, 4		# Codigo do syscall para imprimir uma string
    	la $a0, %string		# Carrega o endereco da striing em $a0
    	syscall
.end_macro

.text
    	main:
        	la $a0, str1    # Carrega o endereco da primeira string em $a0
        	la $a1, str2    # Carrega o endereco da segunda string em $a1
        	li $a3, 4       # Define o numero maximo de caracteres para comparar
        	jal strncmp  	# Chama a funcao de comparacao de strings
        	move $t0, $v0   # Move o resultado para $t0

        	# Com base no retorno da funcao, vai para um dos possiveis casos
        	beq $t0, $zero, strings_iguais	# result = 0 / str1 = str2 (ate n)
        	blt $t0, $zero, str1_maior	# result = ++ / str1 = str2 (ate n)
        	bgt $t0, $zero, str1_menor	# result = -- / str1 = str2 (ate n)

   	strings_iguais:
        	print_str(result_igual)	# Imprime a string para strings iguais
        	print_int($a3)		# Imprime o indice da string onde foi encontrada a igualdade
        	j exit

    	str1_menor:
        	print_str(result_menor)	# Imprime a string para string1 < string2
        	addi $t3, $t3, 1	# Adiciona um ao contador para indicar onde foi encontrada a diferença
        	print_int($t3)		# Imprime o indice da string onde foi encontrada a diferenca entre elas
        	j exit

    	str1_maior:
        	print_str(result_maior)	# Imprime a string para string1 > string2
        	addi $t3, $t3, 1	# Adiciona um ao contador para indicar onde foi encontrada a diferença
        	print_int($t3)		# Imprime o indice da string onde foi encontrada a diferenca entre elas
        	j exit

    	strncmp:    		
        	lb $t1, 0($a0)   # Carrega o primeiro caractere de str1
        	lb $t2, 0($a1)   # Carrega o primeiro caractere de str2
        	li $t3, 0        # Inicializa um contador para o numero de caracteres comparados

    		loop_comparar_max:
        		beq $t3, $a3, fim_comparacao_max  # Se o numero maximo de caracteres foi atingido, encerra a comparacao
        		beq $t1, $t2, continua_comparacao_max  # Se os caracteres sao iguais, continue
        		sub $v0, $t1, $t2  # Calcula a diferenca dos valores / Se for zero, entao e igual
        		j fim_comparacao_max

    		continua_comparacao_max:
        		beqz $t1, fim_comparacao_max  # Se $t1 = zero (diferenca encontrada), encerra a comparação
        		addi $a0, $a0, 1   # Avanca para o proximo caractere em str1
        		addi $a1, $a1, 1   # Avanca para o proximo caractere em str2
        		lb $t1, 0($a0)     # Carrega o proximo caractere de str1
        		lb $t2, 0($a1)     # Carrega o proximo caractere de str2
        		addi $t3, $t3, 1   # Incrementa o contador de caracteres comparados
        		j loop_comparar_max

    		fim_comparacao_max:
        		jr $ra  # Retorna do procedimento
       
    	exit:
        	li $v0, 10        # Codigo do syscall para encerrar o programa
        	syscall