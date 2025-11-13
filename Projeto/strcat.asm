# Parametros -> $a0 - destinarion ; $a1 - source ; $v0 - retorno
.globl strcat

.text
    	strcat:
    		li $t2, 0          # $t2 vai guardar o tamanho de dest
   	 	move $t0, $a0      # Recebe o endereco de $a0 para iterar sem mudar o valor original do destination
    		move $t1, $a1      # Recebe o endereco de $a1 para iterar sem mudar o valor original do source

    		# Encontrar o tamanho de dest
    		tamanho:
        		lb $t3, 0($t0)  # Carrega byte por byte de dest em $t3
        		beq $t3, $zero, concat  # Se encontrar o caractere nulo em dest, pula para a funcao concat
        		addi $t2, $t2, 1  # Incrementa o tamanho de dest
        		addi $t0, $t0, 1  # Incrementa o endereco de dest em $t0 para verificar o byte seguinte
        		j tamanho

    		# Concatenar source no final de dest
    		concat:
        		lb $t2, 0($t1)  # Carrega um caractere de source no registrador $t2
        		sb $t2, 0($t0)  # Armazena um caractere de source no fim da string dest
        		beq $t2, $zero, end_function  # Se encontrar caractere nulo em source, pula para o fim da funcao
        		addi $t1, $t1, 1  # Incrementa o endereco de source para copiar o caractere seguinte
        		addi $t0, $t0, 1  # Incrementa o endereco de dest para indicar a proxima posicao para onde o caractere copiado de source deve ir
        		j concat

    	end_function:
    		move $v0, $a0	# Retorna o detination em $v0
    		jr $ra  # Jump para onde foi chamada no main
