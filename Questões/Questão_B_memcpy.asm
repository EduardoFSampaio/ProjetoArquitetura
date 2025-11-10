.data 
	string: .asciiz "Programar e lindo demais"
	resultadoString: .space 20  # Espaço para armazenar uma string de até 20 bytes

.text
	main:
		la $a0, resultadoString    # Carrega o endereco do destino em $a0
        	la $a1, string     # Carrega o endereco da string a ser copiada (source) em $a1
        	li $a2, 12        # Define o numero maximo de caracteres para copiar da string 
        	jal memcpy_assembly  # Chama a funcao que retorna o número de caracteres especificados
        	
		addi $v0, $0, 4		# Codigo do syscall para imprimir uma string
    		syscall
		
		j exit
		
	memcpy_assembly:
    		add $t0, $zero, $zero # Contador de bytes copiados no registrador $t0 = 0
    		
		move $t2, $a0
		move $t3, $a1
		
    		# Loop para copiar os bytes
    		loop:
        		# Verifica se o número de bytes copiados é igual ao num
        		beq $t0, $a2, end_loop  #Se o número de bytes copiados for igual a 

        		# Carrega um byte da fonte para $t1
        		lb $t1, 0($t3)          # $t1 recebe o byte da string $a1

        		# Armazena o byte na posição de destino
        		sb $t1, 0($t2)          # $t1 armazena o byte em $a0
			
        		# Incrementa os ponteiros de origem e destino
        		addi $t2, $t2, 1        # Incrementa o ponteiro de destination
        		addi $t3, $t3, 1        # Incrementa o ponteiro de source

        		# Incrementa o contador de bytes copiados
       		 	addi $t0, $t0, 1        # Incrementa o contador de bytes copiados
	
        		# Volta para o início do loop
        		j loop                  # Jump para o início do loop

    		# Fim do loop
    		end_loop:
        		# Coloca o ponteiro de destination em $v0 (retorno)
			move $v0, $a0
			
        		# Retorna para o endereço de retorno
        		jr $ra                  # Jump para o endereço de retorno
        		
		exit:
			li $v0, 10        # Codigo do syscall para encerrar o programa
        		syscall