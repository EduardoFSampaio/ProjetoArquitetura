# Parametros -> $a0 - endereco da string de data a ser convertida (ultimo byte); $v0 - inteiro convertido
.globl converte_stringData_int

.text
    	converte_stringData_int:
    		li $t6, 0 	# Contador para saber quantos bytes foram convertidos
    			
    		# Variaveis necessarias
		li $t1, 1 	# Para iterar as bases decimais
		li $t2, 10 	# Valor 10 para ser multiplicado
		li $t3, 0 	# Para acumular o inteiro convertido		
	
		loop_conversao:
			beq $t6, 2, end_conversao # Se terminou a conversao da string de todos os bytes, vai para fim da conversao
			lb $t7, 0($a0)		# Carrega em $t7 um byte a ser convertido
			addi $t7, $t7, -48 	# Converte pra inteiro
			mul $t8, $t7, $t1 	# Multiplica o inteiro pela base decimal correspondente e guarda resultado em $t8
			add $t3, $t3, $t8	# $t3 vai acumular a soma de todas as conversoes, que sera o resultado da multiplicacao
			mul $t1, $t1, $t2 	# Multiplica $t1 por 10 pra ir atualizando as bases
			addi $t6, $t6, 1 	# Incrementa o contador
			addi $a0, $a0, -1 	# Decrementa o endereco
			j loop_conversao
		
		end_conversao:
			move $v0, $t3	# Move a soma das multiplicacoes para $v0, que sera o resultado convertido
			jr $ra		# Jump para onde foi chamada
