# Parametros -> $a0 - endereco de conta na memoria; $v0 - digito verificador
.globl calcularDigitoVerificador

.text
	calcularDigitoVerificador:
		# Argumento: $a0 = endereco de conta
    		# Retorno: $v0 = digito verificador
    		li $t0, 7	# $t0 armazena o peso atual utlizado no calculo do digito verificador (comeca em 7 e vai decrementando)

    		li $t1, 0	# $t1 eh o acumulador para armazenar a soma ponderada dos dígitos

    		li $t3, 0	# $t3 eh um contador do loop para percorrer os primeiros 6 digitos da conta
    		
    		la $t5, 0($a0)	# Guarda em $t5 o endereco do inicio do numero da conta do cliente, salvo na memoria
    		
    		calcularLoop:
        		lb $t6, 0($t5)		# Carrega em $t9 o caractere do numero da conta atual
        		addi $t6, $t6, -48  	# Converte o caractere para sua versao numerica
       		
        		mul $t6, $t6, $t0	# Realiza a multiplicacao do digito pelo peso correspondente
        		add $t1, $t1, $t6	# Adiciona a $t1 o valor multiplicado pelo peso, para obter a soma ponderada

        		# Proximo digito e peso      		
        		addi $t0, $t0, -1	# Decrementa 1 do peso
        		addi $t3, $t3, 1	# Acrescenta 1 ao contador de bytes ja lidos
        		addi $t5, $t5, 1	# Avanca 1 byte no endereco da conta

        		# Condicao de parada
       		 	bne $t3, 6, calcularLoop	# Enquanto a quantidade de bytes calculada for < 6, continua caculando
        		nop

    		# Calcula o resto da divisao da soma pelo numero 11
    		li $t0, 11      # Carrega 11 em $t0 para fazer a divisao
    		div $t1, $t0	# Divide $t1 (soma) por $t0 (11)
    		mfhi $t6	# Pega o resto da divisao e move para o registrador $t6

    		# Retorna 'X' se o resto for 10, caso contrario, retorna o proprio resto convertido para caractere
    		li $t0, 10		# Carrega 10 em $t0 para comparar
   	 	beq $t6, $t0, resto10	# Se o resto for 10, jump para resto10
    		addi $t6, $t6, 48	# Se nao for 10, converte o resto (numero) para sua versao em caractere
    		
    		j fimFuncaoCalculo

	resto10:
    		li $t6, 88       # 88 = numero do caractere 'X'

	fimFuncaoCalculo:
    		move $v0, $t6	# Guarda em $v0 o retorno da funcao (digito verificador)
    		jr $ra          # Jump para a funcao cadastrarCliente