.data
    	str1: .asciiz "Corre"	# String1 que vai passar pela funcao para teste.
    	str2: .asciiz "Corre"	# String2 que vai passar pela funcao para teste.
    	result_igual: .asciiz "As duas strings sao iguais"
    	result_maior: .asciiz "A string1 > string2"
    	result_menor: .asciiz "A string1 < string2"

.macro print_str(%string)
	addi $v0, $0, 4		# Codigo do syscall para imprimir uma string
    	la $a0, %string		# Carrega o endereco da striing em $a0
    	syscall
.end_macro

.text
    	main:
        	la $a0, str1    # Carrega o endereco da primeira string em $a0
        	la $a1, str2    # Carrega o endereco da segunda string em $a1
        	jal strcmp  	# Chama a funcao de comparacao de strings
        	move $t0, $v0   # Move o resultado para $t0

        	# Com base no retorno da funcao, vai para um dos possiveis casos
        	beq $t0, $zero, strings_iguais	# result = 0 / str1 = str2
        	blt $t0, $zero, str1_maior	# result = ++ / str1 = str2
        	bgt $t0, $zero, str1_menor	# result = -- / str1 = str2

    	strings_iguais:
        	print_str(result_igual)	# Imprime a string para strings iguais
        	j exit

    	str1_menor:
        	print_str(result_menor)	# Imprime a string para string1 < string2
        	j exit

    	str1_maior:
        	print_str(result_maior)	# Imprime a string para string1 > string2
        	j exit

    	strcmp:
        	lb $t1, 0($a0)   # Carrega o primeiro caractere de str1
        	lb $t2, 0($a1)   # Carrega o primeiro caractere de str2

    		loop_comparar:
        		beq $t1, $t2, continua_comparacao  # Se os caracteres sao iguais, continue
        		sub $v0, $t1, $t2  # Calcula a diferenca dos valores / Se for zero, entao e igual
        		j fim_comparacao

    		continua_comparacao:
        		beqz $t1, fim_comparacao  # Se $t1 = zero (diferenca encontrada), encerra a comparação
        		addi $a0, $a0, 1   # Avanca para o proximo caractere em str1
        		addi $a1, $a1, 1   # Avanca para o proximo caractere em str2
        		lb $t1, 0($a0)     # Carrega o proximo caractere de str1
        		lb $t2, 0($a1)     # Carrega o proximo caractere de str2
        		j loop_comparar

    		fim_comparacao:   			
        		jr $ra  # Retorna para o main
       
    	exit:
        	li $v0, 10        # Codigo do syscall para encerrar o programa
        	syscall