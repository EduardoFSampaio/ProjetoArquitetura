# Parametros -> $a0 - str1 ; $a1 - str2 ; $v0 - result
.globl strcmp

.text
    	strcmp:
        	lb $t1, 0($a0)   # Carrega o primeiro caractere de str1
        	lb $t2, 0($a1)   # Carrega o primeiro caractere de str2

    	loop_comparar:
    		sub $v0, $t1, $t2  # Calcula a diferenca dos valores / Se for zero, entao e igual
        	beq $t1, $t2, continua_comparacao  # Se os caracteres sao iguais, continue
        	j fim_comparacao

   	continua_comparacao:
        	beqz $t1, fim_comparacao  # Se $t1 = zero (fim da string), encerra a comparacaoo
        	addi $a0, $a0, 1   # Avanca para o proximo caractere em str1
        	addi $a1, $a1, 1   # Avanca para o proximo caractere em str2
        	lb $t1, 0($a0)     # Carrega o proximo caractere de str1
        	lb $t2, 0($a1)     # Carrega o proximo caractere de str2
        	j loop_comparar

    	fim_comparacao:
        	jr $ra	# Jump para onde foi chamada no main
