# Parametros -> $a0 - destination; $a1 - source; $a2 - num
.globl memcpy

.text
	memcpy:
    		add $t0, $zero, $zero # Contador de bytes copiados no registrador $t0 = 0
    		
		move $t2, $a0	# Recebe o endereco de $a0 para iterar sem mudar o valor original
		move $t3, $a1	# Recebe o endereco de $a1 para iterar sem mudar o valor original
		
    		# Loop para copiar os bytes
    		loop:
        		beq $t0, $a2, end_loop  # Se o numero de bytes copiados for igual ao num, vai para o fim do loop

        		lb $t1, 0($t3)          # $t1 recebe o byte da posicao[$t0] da string $a1

        		sb $t1, 0($t2)          # $t1 armazena o byte da posicao[$t0] em $a0
			
        		addi $t2, $t2, 1        # Incrementa o ponteiro de destination
        		addi $t3, $t3, 1        # Incrementa o ponteiro de source

       		 	addi $t0, $t0, 1        # Incrementa o contador de bytes copiados
	
        		j loop                  # Jump para o início do loop

    		# Fim do loop
    		end_loop:	
    			move $v0, $a0	# Retorna o detination em $v0
        		jr $ra	# Jump para onde foi chamada no main
