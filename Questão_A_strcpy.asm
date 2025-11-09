.data
    string: .asciiz "Cadeira" 	# String que vai passar pela funcao para teste.
    source: .space 20 		# Espaco para armazenar uma string de até 20 bytes
    
.text
	main: 
      		la $a0, destino  # Carregar o endereco da string de destino em $a0
     		la $a1, source  # Carregar o endereco da string de origem em $a1
      		jal strcpy  	# Chamar a funcao strcpy

		addi $v0, $0, 4		# Codigo do syscall para imprimir uma string
    		syscall

      		j exit

 	strcpy:		
 		move $t1, $a1	# Temporario para iterar entre os indices da string source sem perder o endereco original
		move $t2, $a0	# Temporario para iterar entre os indices da string destination sem perder o endereco original
		
     		loop:
        		lb $t0, 0($t1)  # Carregar o proximo byte de string
        		sb $t0, 0($t2)  # Armazenar tal byte em destino
        		beq $t0, $zero, end  # Se o byte for zero (o ultimo da string), encerra a funcao

        		addi $t1, $t1, 1 # Soma 1 no indice para avancar para o proximo byte na string de origem
        		addi $t2, $t2, 1 # Soma 1 no indice para avancar para o proximo byte na string de destino
        		j    loop 	# Volta para o loop

      		end:
      			move $v0, $a0	# Retorna o detination em $v0
        		jr  $ra  # Retornar

	exit:
        	li $v0, 10        # Codigo do syscall para encerrar o programa
        	syscall