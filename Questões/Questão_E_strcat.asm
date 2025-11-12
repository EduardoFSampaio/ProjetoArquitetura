.data
	dest: .space 80
	source: .space 80
	dest_prompt: .asciiz "Insira a primeira string: "
	source_prompt: .asciiz "Insira a string a ser concatenada: "
	
.text
	li $v0, 4	# Codigo do syscall para imprimir string
	la $a0, dest_prompt	# endereco da string
	syscall
	
    	li $v0, 8	# Codigo do syscall para ler string
    	la $a0, dest	# Carrega em $a0 endereco de dest
    	li $a1, 80	# Tamanho de bytes maximo a ser lido
    	syscall
    
	li $v0, 4	# Codigo do syscall para imprimir string
	la $a0, source_prompt	# endereco da string
	syscall
	
	li $v0, 8	# Codigo do syscall para ler string
	la $a0, source	# Guarda string lida em source
	li $a1, 80	# Tamanho da string a ser lida
	syscall
	
	# Chama funcao com enderecos de $a0 e $a1
	la $a0, dest
    	la $a1, source
    	jal concatenacao
	
	# Imprimir string concatenada em dest
	li $v0, 4
	la $a0, dest
	syscall
	
	# Encerrar programa
	li $v0, 10
	syscall
	
	concatenacao:
		li $t2, 0		# $t2 vai guardar o tamanho de dest
		move $t0, $a0		# guarda endereco de dest em $t0 para ser usado sem alterar $a0
		move $t1, $a1		# $t1 vai guardar o endereco de source
		
		tamanho:
		lb $t3, 0($t0)		# pra carregar byte por byte de dest em $t1
		beq $t3, 10, concat	# ao achar a quebra de linha produzida na leitura de dest, pula pra funcao concat
		addi $t2, $t2, 1	# incrementa o tamanho de dest
		addi $t0, $t0, 1	# incrementa o endereco de dest em $t0 para verificar o byte seguinte
		j tamanho
		
		concat:
		lb $t2, 0($t1)		# carrega um caractere de source no registrador $t2
		sb $t2, 0($t0)		# armazena um caractere de source no fim da string dest
		addi $t1, $t1, 1	# incrementa o endereco de source pra copiar caractere seguinte
		addi $t0, $t0, 1	# incrementa o endereco de dest pra indicar prox. pos. pra onde o caractere copiado de source deve ir
		beq $t2, $zero, nullch	# se achar caractere nulo em source pula pra funcao nullch
		j concat
		
		nullch:
		sb $zero, 0($t0)	# adiciona o caractere nulo no final da string concatenada
		move $v0, $a0		# move o endereco de dest para o retorno em $v0
		
		jr $ra			# Volta pra proxima instrucao depois da chamada da funcao
		