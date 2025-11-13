# Parametros -> $a0 - destination; $a1 - source; $v0 - result
.globl strcpy3

.text
	strcpy3:		
 		move $t1, $a0	# Temporario para iterar entre os indices da string destination sem perder o endereco original
		move $t2, $a1	# Temporario para iterar entre os indices da string source sem perder o endereco original
		
     		loop:
        		lb $t0, 0($t2)  # Carregar o proximo byte de source
        		beq $t0, 10, end  # Se o byte for \n (o ultimo da string), encerra a funcao
        		sb $t0, 0($t1)  # Armazenar tal byte em destination

        		addi $t1, $t1, 1 # Soma 1 no indice para avancar para o proximo byte na string de destino
        		addi $t2, $t2, 1 # Soma 1 no indice para avancar para o proximo byte na string de origem
        		j loop	# Volta para o loop

      		end:
      			move $v0, $a0	# Retorna o detination em $v0
        		jr $ra	# Jump para onde foi chamada no main
