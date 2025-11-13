# Parametros -> $a0 - str1 ; $a1 - str2 ; $a3 - num ; $v0 - result
.globl strncmp

.text
	strncmp:
    		# Argumentos $a0 = str1, $a1 = str2, $a3 = num, retorno em $v0
        	lb $t1, 0($a0)   # Carrega o primeiro caractere de str1
        	lb $t2, 0($a1)   # Carrega o primeiro caractere de str2
        	li $t3, 0        # Inicializa um contador para o numero de caracteres comparados

	loop_comparar_max:
		sub $v0, $t1, $t2  # Calcula a diferenca dos valores / Se for zero, entao sao iguais 
        	beq $t3, $a3, fim_comparacao_max  # Se o numero maximo de caracteres foi atingido, encerra a comparacao
        	beq $t1, $t2, continua_comparacao_max  # Se os caracteres sao iguais, continue
        	j fim_comparacao_max

    	continua_comparacao_max:
        	beqz $t1, fim_comparacao_max  # Se $t1 = zero (diferenca encontrada), encerra a comparacaoo
        	addi $a0, $a0, 1   # Avanca para o proximo caractere em str1
        	addi $a1, $a1, 1   # Avanca para o proximo caractere em str2
        	lb $t1, 0($a0)     # Carrega o proximo caractere de str1
        	lb $t2, 0($a1)     # Carrega o proximo caractere de str2
        	addi $t3, $t3, 1   # Incrementa o contador de caracteres comparados
        	j loop_comparar_max

    	fim_comparacao_max:
        	jr $ra	# Jump para onde foi chamada no main
