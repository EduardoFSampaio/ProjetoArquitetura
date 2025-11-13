# Nome do projeto: Sampaio-Banco
# Integrante: Eduardo Furtado Sampaio
# Projeto 1 VA Assembly | Arquitetura e Organizacao de Computadores | Semestre: 2025.2

.data
    	MAX_CLIENTES: .word 50
    	cliente0: .space 64  # Espaco para armazenar informacoes do cliente0 (Cada cliente possui 64 bytes, sendo 11 para cpf, 8 para a conta, 6 para o saldo (em centavos), 6 para o limite (em centavos), 6 para a fatura/divida (em centavos) e 27 para o nome)
    	cliente1: .space 64
    	cliente2: .space 64
    	cliente3: .space 64
    	cliente4: .space 64
    	cliente5: .space 64
    	cliente6: .space 64
    	cliente7: .space 64
    	cliente8: .space 64
    	cliente9: .space 64
    	cliente10: .space 64
    	cliente11: .space 64
    	cliente12: .space 64
    	cliente13: .space 64
    	cliente14: .space 64
    	cliente15: .space 64
    	cliente16: .space 64
    	cliente17: .space 64
    	cliente18: .space 64
    	cliente19: .space 64
    	cliente20: .space 64
    	cliente21: .space 64
    	cliente22: .space 64
    	cliente23: .space 64
    	cliente24: .space 64
    	cliente25: .space 64
    	cliente26: .space 64
    	cliente27: .space 64
    	cliente28: .space 64
    	cliente29: .space 64
    	cliente30: .space 64
    	cliente31: .space 64
    	cliente32: .space 64
    	cliente33: .space 64
    	cliente34: .space 64
    	cliente35: .space 64
    	cliente36: .space 64
    	cliente37: .space 64
    	cliente38: .space 64
    	cliente39: .space 64
    	cliente40: .space 64
    	cliente41: .space 64
    	cliente42: .space 64
    	cliente43: .space 64
    	cliente44: .space 64
    	cliente45: .space 64
    	cliente46: .space 64
    	cliente47: .space 64
    	cliente48: .space 64
    	cliente49: .space 64
    	
    	# Espaco para armazenar os extratos dos clientes (Cada cliente pode ter ate 50 extratos) cada um com 38 bytes (1900 = 38 *50)
    	extratos0: .space 1900 # Cada extrato eh estruturado assim: 8 bytes para o num da Conta do cliente que realizou a transferencia, 8 bytes para o num da conta do cliente que recebeu a transferencia, 1 byte para o tipo da transferencia, 8 bytes para DDMMAAAA, 1 byte para '-' e 6 bytes para HHMMSS
    	extratos1: .space 1900
    	extratos2: .space 1900
    	
    	nomeBancoBanner: .asciiz "Eduardo-Bank>> "
    	MEMORIA_GRAVADA_MSG: .asciiz "\nMemoria gravada nos arquivos com sucesso\n"
	MEMORIA_CARREGADA_MSG: .asciiz "\nMemoria carrega dos arquivo com sucesso\n"
    	LIMITE_ATINGIDO_MSG: .asciiz "\nLimite de clientes atingido.\n"
   	CLIENTE_CADASTRADO_MSG: .asciiz "\nCliente cadastrado com sucesso. Numero da conta: "
   	CLIENTE_INVALIDO_MSG: .asciiz "\nNumero da conta do cliente invalido.\n"
   	COMANDO_NAO_EXISTE: .asciiz "\nO comando inserido nao existe, tente novamente.\n"
   	LIMITE_ALTERADO_MSG: .asciiz "\nLimite alterado com sucesso. Numero da conta: "
   	LIMITE_MSG: .asciiz "Limite: "
   	CONTA_FECHADA_MSG: .asciiz "Conta fechada com sucesso\n" 
   	CONTA_NAOZERADA_MSG: .asciiz "\nFalha: cliente possui saldo, ou limite devedor ainda nao quitado.\nSaldo da conta corrente R$ "
	FATURA_NAOPAGA_MSG: .asciiz "Limite de credito devido(fatura): R$ "
   	CPF_INVALIDO_MSG: .asciiz "Falha: CPF nao possui cadastro\n"
   	SAQUE_REALIZADO_MSG: .asciiz "\nSaque realizado com sucesso. Valor sacado: "
   	DEPOSITO_REALIZADO_MSG: .asciiz "\n\Deposito realizado com sucesso. Valor depositado: "
   	SALDO_MSG: .asciiz "Saldo: "
   	SALDO_INSUFICIENTE_TRANSFERENCIA_MSG: .asciiz "\nErro: O cliente 2 não possui saldo suficiente para transferir\n"
   	SALDO_INSUFICIENTE_MSG: .asciiz "\nErro: O cliente não possui saldo suficiente\n"
   	TRANSFERENCIA_REALIZADA_D_MSG: .asciiz "\nTransferencia no debito realizada com sucesso. Valor transferido: "
   	TRANSFERENCIA_REALIZADA_C_MSG: .asciiz "\nTransferencia no credito realizada com sucesso. Valor transferido: "
   	TRANSFERIDO_DE_MSG: .asciiz "Transferido de: "
   	TRANSFERIDO_PARA_MSG: .asciiz "Transferido para: "
   	LIMITE_INSUFICIENTE_MSG: .asciiz "\nErro: O cliente 2 não possui limite suficiente\n"
   	PAGAMENTO_REALIZADO_S_MSG: .asciiz "\nPagamento de fatura no debito realizada com sucesso. Valor pago: "
   	PAGAMENTO_REALIZADO_E_MSG: .asciiz "\nPagamento de fatura com valor externo realizada com sucesso. Valor pago: "
   	FATURA_MSG: .asciiz "Fatura: "
   	VALOR_SUPERIOR_FATURA_MSG: .asciiz "\nFalha: O valor fornecido é superior ao valor da fatura\n"
   	DATA_CONFIGURADA_MSG: .asciiz "\nData configurada com sucesso: "
   	DATA_ATUAL_MSG: .asciiz "\nData atual: "
   	DATA_INVALIDA_MSG: .asciiz "\nErro: A data inserida eh invalida\n"
   	BARRA: .asciiz "/"
   	HIFEN: .asciiz "-"
   	DOIS_PONTOS: .asciiz ":"
   	ZERO: .asciiz "/0"
   	
   	conta_cadastrar: .asciiz "conta_cadastrar"
   	conta_format: .asciiz "conta_format"
   	debito_extrato: .asciiz "debito_extrato"
   	credito_extrato: .asciiz "credito_extrato"
   	transferir_debito: .asciiz "transferir_debito"
   	transferir_credito: .asciiz "transferir_credito"
   	pagar_fatura: .asciiz "pagar_fatura"
   	sacar_: .asciiz "sacar"
   	depositar_: .asciiz "depositar"
   	alterar_limite: .asciiz "alterar_limite"
   	conta_fechar: .asciiz "conta_fechar"
   	data_hora: .asciiz "data_hora"
   	
   	# Strings sem hifen
   	salvar_str: .asciiz "salvar"
   	recarregar_str: .asciiz "recarregar"
   	formatar_str: .asciiz "formatar"
	
	# Para as funcoes que recebem duas contas como argumento
	contaComDigito1: .space 9	# Para receber a primeira conta de um comando com 2 contas
	contaComDigito2: .space 9	# Para receber a segunda conta de um comando com 2 contas
	contaAtual1: .space 9		# Para comparar no vetor de clientes, se o clienteAtual1 eh igual ao contaComDigito1
	contaAtual2: .space 9		# Para comparar no vetor de clientes, se o clienteAtual2 eh igual ao contaComDigito2
	
	# Registro do extrato
	registroDoExtrato: .space 38 # Pra imprimir um registro de um extrato

	tipoTransferencia_D: .asciiz "D" # Tipo Debito
	tipoTransferencia_C: .asciiz "C" # Tipo Credito
	
	# Para funcoes que recebem apenas uma conta como argumento
   	contaComDigito: .space 9	# Para receber a conta de um comando
   	contaAtual: .space 9		# Para comparar no vetor de clientes, se o clienteAtual eh igual a contaComDigito
   	
   	# Para funcoes que recebem valor como argumento
   	valor: .space 6
   	valorConvertido: .space 6
   	
   	#Conta atual do meu loop de buscar nos clientes
   	cpfAtual: .space 12
   	
   	# Saldo atual do meu loop de buscar nos clientes
   	saldoAtual: .space 7
   	
   	# fatura atual do meu loop de buscar nos clientes
   	faturaAtual: .space 7

   	# Para selecao do metodo de pegamento da funcao para fatura
   	metodoPagamento: .space 2
   	metodoPagmentoS: .asciiz "S"
   	
   	# Para funcao dataHora
   	data: .space 9 # formato DDMMAAAA dia/mes/ano
   	horario: .space 7 # formato HHMMSS hora/min/seg
   	
   	# Para usar na funcao dataHora
   	dia: .space 3
   	mes: .space 3
   	ano: .space 5
   	
   	hora: .space 3
   	minuto: .space 3
   	segundo: .space 3
   	
   	dataConvertida: .space 2
   	
   	# Cadastrar extrato
   	extrato: .space 3
   	
   	# Pra armazenar apenas os comandos inseridos na input_string  	
 	stringComando: .space 20 
   	
   	# String digitada pelo usuario no terminal do programa
   	input_string: .space 70
   	
   	teste: .asciiz "to aqui"
   	
   	cpf: .space 12	 	# Espaco na memoria para armazenar o cpf lido no input
	conta: .space 6 	# Espaco na memoria para armazenar o numero da conta lido no input
	saldo: .asciiz "000000"		# Valor padrao para um saldo ao cadastrar o cliente
	limite: .asciiz "150000"	# Valor padrao para um limite ao cadastrar o cliente
	fatura: .asciiz "000000"	# Valor padrao para uma fatura ao cadastrar o cliente
	nome: .space 27		# Espaco na memoria para armazenar o nome lido no input
	
	# Arquivos
	# Em localArquivo eh necessario mudar o caminho de onde o arquivo sera salvo/lido no SEU PROPRIO computador
	localArquivoClientes: .asciiz "C:/Users/samp/Documents/UFRPE/Arquitetura e Organização de Computadores/Eduardo-banco/Projeto/Clientes.txt"
	localArquivoExtratos: .asciiz "C:/Users/samp/Documents/UFRPE/Arquitetura e Organização de Computadores/Eduardo-banco/Projeto/Extratos.txt"
	conteudoArquivoClientes: .space 128 # Cada cliente tem apenas 64 bytes, para teste com dois clientes eh suficiente
	conteudoArquivoExtratos: .space 4000 # Cada extrato tem 1900 bytes, para teste com dois extratos eh suficiente

.macro print_int(%inteiro)	# Macro para imprimir um inteiro, passado como parametro
	addi $v0, $0, 1		# Codigo do syscall para imprimir um inteiro
    	add $a0, $0, %inteiro	# Coloque o valor a ser impresso em $a0 
    	syscall
.end_macro

.macro print_str(%string)	# Macro para imprimir uma string, passada como parametro
	addi $v0, $0, 4		# Codigo do syscall para imprimir uma string
    	la $a0, %string		# Carrega o endereco da striing em $a0
    	syscall
.end_macro

.macro print_bl			# Macro para imprimir uma quebra de linha
    	addi $v0, $0, 11	# Codigo do syscall para imprimir um caractere
    	addi $a0, $0, '\n'	# Carrega \n em $a0 para uma quebra de linha
    	syscall
.end_macro

.macro guardar_ra_pilha
	addi $sp, $sp, -4	# Reserva 1 espaco na pilha (4 bytes)
    	sw $ra, 0($sp)		# Guarda o $ra atual na pilha
.end_macro

.macro carregar_ra_pilha
	lw $ra, 0($sp)		# Carrega o $ra guardado na pilha
	addi $sp, $sp, 4	# Tira o espaco reservado na pilha (4 bytes)
.end_macro

.macro buscar_contaCliente(%clienteInput, %clienteAtual, %labelEncontrado)
 # stringInput vai ser dita pelo comando, stringAtual vai depender do contexto, labelEncontrado direciona para o que fazer apos encontrar o cliente
 	loop_contaCliente:		# Loop para buscar um cliente pelo numero da conta
    		la $a0, %clienteAtual	# Carrega em $a0 a posicao inicial do espaço na memoria para guardar o num da conta do cliente atual
		la $a1, 11($t4)         # Carrega em $a1 a posicao inicial do num da conta do cliente atual
    		la $a2, 8               # Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
    		jal memcpy              # Chama memcpy

    		la $a0, %clienteInput	# Carrega em $a0 a clienteInput, tirada do input
    		la $a1, %clienteAtual   # Carrega em $a1 a clienteAtual, para verificar se o num da conta eg igual ao do input
    		jal strcmp              # Compara as duas strings, se forem iguais, achou o cliente

    		beqz $v0, %labelEncontrado # Se $v0 = 0, pula para o labelEncontrado

    		addi $t4, $t4, 64      	# Avança 64 bytes para ir para o proximo cliente
    		addi $t6, $t6, 1        # Acrescenta 1 ao contador de clientes procurados

    		beq $s2, $t6, cliente_invalido # Caso o contador chegue em 50 (maximo) = passou por todos e nao encontrou, ai vai para o erro
    		j loop_contaCliente	 # Enquanto $v0 != 0 e o contador nao chegar a 50 clientes, continua procurando		
.end_macro

.macro buscar_duas_contaCliente(%clienteInput1, %clienteAtual1, %clienteInput2, %clienteAtual2, %labelEncontrados)
 # stringInput vai ser dita pelo comando, stringAtual vai depender do contexto, labelEncontrado direciona para o que fazer apos encontrar o cliente
 	loop_contaCliente1:		# Loop para buscar o primeiro cliente pelo numero da conta
    		la $a0, %clienteAtual1	# Carrega em $a0 a posicao inicial do espaço na memoria para guardar o num da conta do cliente atual
		la $a1, 11($t4)         # Carrega em $a1 a posicao inicial do num da conta do cliente atual
    		la $a2, 8               # Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
    		jal memcpy              # Chama memcpy

    		la $a0, %clienteInput1	# Carrega em $a0 a clienteInput1, tirada do input
    		la $a1, %clienteAtual1   # Carrega em $a1 a clienteAtual1, para verificar se o num da conta eh igual ao do input
    		jal strcmp              # Compara as duas strings, se forem iguais, achou o cliente

    		beqz $v0, loop_contaCliente2 # Se $v0 = 0, pula para o loop_contaCliente2

    		addi $t4, $t4, 64      	# Avança 64 bytes para ir para o proximo cliente
    		addi $t6, $t6, 1        # Acrescenta 1 ao contador de clientes procurados

    		beq $s2, $t6, cliente_invalido # Caso o contador chegue em 50 (maximo) = passou por todos e nao encontrou, ai vai para o erro
    		j loop_contaCliente1	 # Enquanto $v0 != 0 e o contador nao chegar a 50 clientes, continua procurando
    		   	
    	li $t6, 0	# cliente 1 encontrado, reinicializa o contador
    	
    	loop_contaCliente2:		# Loop para buscar o primeiro cliente pelo numero da conta
    		la $a0, %clienteAtual2	# Carrega em $a0 a posicao inicial do espaço na memoria para guardar o num da conta do cliente atual
		la $a1, 11($t5)         # Carrega em $a1 a posicao inicial do num da conta do cliente atual
    		la $a2, 8               # Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
    		jal memcpy              # Chama memcpy

    		la $a0, %clienteInput2	# Carrega em $a0 a clienteInput2, tirada do input
    		la $a1, %clienteAtual2   # Carrega em $a1 a clienteAtual2, para verificar se o num da conta eh igual ao do input
    		jal strcmp              # Compara as duas strings, se forem iguais, achou o cliente

    		beqz $v0, %labelEncontrados # Se $v0 = 0, pula para o labelEncontrados

    		addi $t5, $t5, 64      	# Avança 64 bytes para ir para o proximo cliente
    		addi $t6, $t6, 1        # Acrescenta 1 ao contador de clientes procurados

    		beq $s2, $t6, cliente_invalido # Caso o contador chegue em 50 (maximo) = passou por todos e nao encontrou, ai vai para o erro
    		j loop_contaCliente2	 # Enquanto $v0 != 0 e o contador nao chegar a 50 clientes, continua procurando
.end_macro

.macro compara_comando_decodifica(%comandoComparacao, %decodificador)
# Macro para comparar o comando para saber qual funcao executar, pulando para seu decodificador
    	la $a0, stringComando           # Carrega em $a0 a string do comando
    	la $a1, %comandoComparacao      # Carrega em $a1 a string de comparação   
    	jal strcmp                  	# Chama a função de comparação de strings
   	beq $v0, $zero, %decodificador	# Se $v0 é zero, pula para a função específica
.end_macro

.macro chama_memcpy_labels(%numBytes, %somaEnderecoS, %source, %somaEnderecoD, %destination)
	li $a2, %numBytes	# Num de bytes a serem copiados
    	la $a1, %source 	# Source de memcpy
    	addi $a1, $a1, %somaEnderecoS # Endereco do comeco da string source
    	la $a0, %destination	# Destination de memcpy
    	addi $a0, $a0, %somaEnderecoD # Endereco do comeco da string destination
    	jal memcpy 		# Chama memcpy
.end_macro

.macro converte_verifica_data(%data, %limite)
	la $a0, %data			# Carrega em $a0 o endereco da data
    	addi $a0, $a0, 1		# Adiciona 1 ao endereco, para chegar ao ultimo byte    			
    	jal converte_stringData_int	# Jump para funcao que converte a string de data em um inteiro
				
	move $s6, $v0	# Carrega em $s6 o valor da data convertida

	bgt $s6, %limite, data_invalida # Se a data for maior que o seu limite, vai para erro de data invalida
.end_macro

.text
    	.globl main

	main:
    		# Inicializacao de variaveis
    		li $s0, 0          	# $s0 = numClientes
    		la $s1, cliente0   	# $s1 = endereco do cliente0
    		lw $s2, MAX_CLIENTES	# $s2 = 50 (num Max de clientes)

		main_loop:		 			
    			print_str(nomeBancoBanner)	# Imprime o banner "Eduardo-Banco>> "

   	 		li $v0, 8           	# Codigo do syscall para pegar input de uma string
    			la $a0, input_string	# Endereco do espaco na memoria para guardar o input
    			li $a1, 70		# Quantidade maxima de caracteres para serem lidos no input
    			syscall

			# Atualmente se o comando for "salvar" fecha o programa
    			jal decodificaInput  # Jump para funcao que decodifica o comando para saber o que fazer

			la $a0, stringComando
			
			jal zerarString

    			j main_loop	# Continua pedindo comandos ate que leia "salvar"
    	
    	# Teste: 
    	# conta_cadastrar-13967492419-100010-Marceline
    	# conta_cadastrar-98765432101-000222-Robson
    	# conta_format-10010-X
    	# debito_extrato-10010-X
    	# credito_extrato-10010-X
    	# transferir_debito-100010-X-000222-7-001000
    	# transferir_credito-100010-X-000222-7-001000
    	# pagar_fatura-100010-X-001000-S
    	# pagar_fatura-100010-X-001500-E
    	# sacar-100010-X-002000
    	# depositar-100010-X-010000
    	# alterar_limite-100010-X-333333
    	# alterar_limite-000222-7-777777
    	# conta_fechar-000222-7
    	# data_hora-18122023-202122
    	# salvar
    	# recarregar
    	# formatar
    	
    	decodificaInput: # Funcao para decodificar o input inserido pelo cliente
    		move $t0, $a0 # Move o endereco de input_string para $t0
    		li $t1, '-' # Carrega o hifen em $t1
    		la $t2, stringComando # Carrega o endereco da string a ser preenchida com o comando para ser comparado
    	
    		copiaComando:
    		lb $t3, 0($t0)  # Carrega byte por byte do comando em $t3
        	beq $t3, $t1, comparaComando  # Se encontrar o hifen, pula para a funcao comparaComando
        	beq $t3, 10, comparaComando # Se encontrar uma quebra de linha também pula pra funcao comparaComando
        	sb $t3, 0($t2) # Copia o byte em $t0 para o endereço em $t2
        	addi $t2, $t2, 1 # Incrementa o endereco de stringComando para copiar o próximo byte
        	addi $t0, $t0, 1  # Incrementa o endereco do comando em $t0 para verificar o byte seguinte
        	j copiaComando
        	
        	comparaComando:       	
        		guardar_ra_pilha()	# Salva o $ra atual na pilha
        		
        		# Para verificar se eh conta_cadastrar   		
        		compara_comando_decodifica(conta_cadastrar, decodificaCadastrarCliente)	# Se for igual pula pro decodificador de cadastrar cliente
    		
    			# Para verificar se eh conta_format
    			compara_comando_decodifica(conta_format, decodificaContaFormat)	# Se for igual pula pro decodificador de conta format
    		
    			# Para verificar se eh de debito_extrato
    			compara_comando_decodifica(debito_extrato, decodificaDebitoExtrato) # Se for igual pula pro decodificador de debito extrato
    		
    			# Para verificar se eh credito_extrato
    			compara_comando_decodifica(credito_extrato, decodificaCreditoExtrato) # Se for igual pula pro decodificador de credito extrato
    		
    			# Para verificar se eh transferir_debito
    			compara_comando_decodifica(transferir_debito, decodificaTransferirDebito) # Se for igual pula pro decodificador de transferir debito

    			# Para verificar se eh transferir_credito
    			compara_comando_decodifica(transferir_credito, decodificaTransferirCredito) # Se for igual pula pro decodificador de transferir credito
    		
    			# Para verificar se eh pagar_fatura
    			compara_comando_decodifica(pagar_fatura, decodificaPagarFatura) # Se for igual pula pro decodificador de pagar fatura
    		
    			# Para verificar se eh sacar
    			compara_comando_decodifica(sacar_, decodificaSacar) # Se for igual pula pro decodificador de sacar
    		
    			# Para verificar se eh depositar
    			compara_comando_decodifica(depositar_, decodificaDepositar) # Se for igual pula pro decodificador de depositar
    		
    			# Para verificar se eh alterar_limite
    			compara_comando_decodifica(alterar_limite, decodificaAlterarLimite) # Se for igual pula pro decodificador de alterar limite
    		
    			# Para verificar se eh contar_fechar
    			compara_comando_decodifica(conta_fechar, decodificaContaFechar) # Se for igual pula pro decodificador de conta fechar
    		
    			# Para verificar se eh data_hora
    			compara_comando_decodifica(data_hora, decodificaDataHora) # Se for igual pula pro decodificador de data hora
    		
    			# Para verificar se eh salvar
    			compara_comando_decodifica(salvar_str, salvar) # Se for igual pula pra funcao salvar
    		
    			# Para verificar se eh recarregar
    			compara_comando_decodifica(recarregar_str, recarregar) # Se for igual pula pra funcao recarregar
    		
    			# Para verificar se eh formatar
    			compara_comando_decodifica(formatar_str, formatar) # Se for igual pula pra funcao formatar
    		
    			# Para comando nao existente
    			print_str(COMANDO_NAO_EXISTE) 	# $a0 = mensagem de comando invalido
    		
    		j fimFuncao	# Jump para fim da funcao, para retornar ao main
    	
    	decodificaCadastrarCliente: 	# Funcao para decodificar os atributos do cliente
    		li $a2, 11 		# Num de bytes do cpf a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 16 	# Endereco do comeco do cpf contido na string
    		la $a0, cpf 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    	
    		li $a2, 6 		# Num de bytes do numero da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 28 	# Endereco do comeco do numero da conta contido na string
    		la $a0, conta 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    	
    		la $a1, input_string 	# Source de strcpy
    		addi $a1, $a1, 35 	# Endereco do comeco do nome contido na string
    		la $a0, nome 		# Destination de strcpy
    		jal strcpy2 		# Chama strcpy
    	
    		j cadastrarCliente # Chama funcao cadastrarCliente
    		
    	decodificaContaFormat:
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 13 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
   
    		j contaFormat 
    		 
    	decodificaDebitoExtrato:
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 15 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j debitoExtrato
    		 
    	decodificaCreditoExtrato: 
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 16 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j creditoExtrato 
    	
    	decodificaTransferirDebito:
    		# Pra string da primeira conta
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 18 	# Endereco do comeco do primeiro num da conta contido na string
    		la $a0, contaComDigito1 # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		# Pra string da segunda conta
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 27 	# Endereco do comeco do segundo num da conta contido na string
    		la $a0, contaComDigito2 # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		# Pra string do valor
    		li $a2, 6 		# Num de bytes do valor a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 36 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j transferirDebito
    		
    	decodificaTransferirCredito:
		# Pra string da primeira conta
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 19 	# Endereco do começo do primeiro num da conta contido na string
    		la $a0, contaComDigito1 # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		# Pra string da segunda conta
    		li $a2, 8 		# Num de bytes do num da conta a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 28 	# Endereco do comeco do segundo num da conta contido na string
    		la $a0, contaComDigito2 # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		# Pra string do valor
    		li $a2, 6 		# Num de bytes do valor a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 37 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j transferirCredito
    		
    	decodificaPagarFatura:
    		li $a2, 8 		# Num de bytes da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 13 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 6 		# Num de bytes do valor a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 22 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 1 		# Num de bytes do metodo a ser copiado
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 29 	# Endereco do metodo de pagamento contido na string
    		la $a0, metodoPagamento # Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j pagarFatura
    		
    	decodificaSacar:
    		li $a2, 8 		# Num de bytes da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 6	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 6 		# Num de bytes do valor a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 15 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j sacar 
    		
	decodificaDepositar:
		li $a2, 8 		# Num de bytes da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 10 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 6 		# Num de bytes do valor a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 19 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j depositar
    		
    	decodificaAlterarLimite:
    		li $a2, 8 		# Num de bytes da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 15 	# Endereco do comeco do num da conta contido na string
    		la $a0, contaComDigito 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 6 		# Num de bytes do valor a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 24 	# Endereco do comeco do valor contido na string
    		la $a0, valor 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j alterarLimite
    		
    	decodificaContaFechar:
    		li $a2, 11 		# Num de bytes da conta a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 13 	# Endereco do comeco do num da conta contido na string
    		la $a0, cpf 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j contaFechar
    		
    	decodificaDataHora:
    		li $a2, 8 		# Num de bytes da data a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 10 	# Endereco do comeco da data/hora contida na string
    		la $a0, data 		# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		li $a2, 6 		# Num de bytes da hora a serem copiados
    		la $a1, input_string 	# Source de memcpy
    		addi $a1, $a1, 19 	# Endereco do comeco da data/hora contida na string
    		la $a0, horario 	# Destination de memcpy
    		jal memcpy 		# Chama memcpy
    		
    		j dataHora

	cadastrarCliente:
    		# Variaveis locais: $s0 = numClientes, $s1 = endereco do bloco de clientes ,  $s2 = MAX_CLIENTES
    		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome

    		# Verificar se o limite de clientes foi atingido
    		bge $s0, $s2, limiteAtingido
	
    		# Calcular o offset para o cliente atual
    		mul $t3, $s0, 64  # Cada cliente tem 64 bytes
    		add $t4, $s1, $t3 # Endereco do cliente atual

    		# Copiar informacoes para a estrutura do cliente
    		la $a0, 0($t4)	# Carrega em $a0 a posicao inicial do cpf do cliente	(cliente[numClientes].cpf[0])
    		la $a1, cpf	# Carrega em $a1 o cpf digitado pelo usuario, que estava na memoria
    		la $a2, 11	# Carrega em $a2 a quantidade de bytes a serem copiadas de "cpf"
    		jal memcpy	# Chama a funcao memcpy
    		
    		la $a0, 11($t4)	# Carrega em $a0 a posicao inicial do numero da conta do cliente (cliente[numClientes].conta[0])
    		la $a1, conta	# Carrega em $a1 o numero da conta digitado pelo usuario, que estava na memoria
    		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas de "conta"
    		jal memcpy	# Chama a funcao memcpy
    		
    		li $t9, '-'         # Carrega em $t9 o caractere '-'
   		sb $t9, 17($t4)     # clientes[numClientes].conta[7] = '-'
   		
    		la $a0, conta       # Passa o endereco da conta salva na memoria para a funcao calcularDigitoVerificador		
    		jal calcularDigitoVerificador
    		sb $v0, 18($t4)     # clientes[numClientes].conta[8] = digito verificador calculado
    		
    		la $a0, 19($t4)	# Carrega em $a0 a posicao inicial do saldo do cliente 	(cliente[numClientes].saldo[0])
    		la $a1, saldo	# Carrega em $a1 o saldo inicial para um cliente definido na memoria
    		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas de "saldo_inicial"
    		jal memcpy	# Chama a funcao memcpy
    		
    		la $a0, 25($t4)	# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    		la $a1, limite	# Carrega em $a1 o limite inicial para um cliente definido na memoria
    		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas de "limite_inicial"
    		jal memcpy	# Chama a funcao memcpy
    		
    		la $a0, 31($t4)	# Carrega em $a0 a posicao inicial da fatura do cliente (cliente[numClientes].fatura[0])
    		la $a1, fatura	# Carrega em $a1 o limite inicial para um cliente definido na memoria
    		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas de "limite_inicial"
    		jal memcpy	# Chama a funcao memcpy
    		
    		li $t9, '0'         # Carrega em $t9 o caractere '0'
   		sb $t9, 37($t4)     # clientes[numClientes].conta[7] = '0'
   		
   		li $t9, '0'         # Carrega em $t9 o caractere '0'
   		sb $t9, 38($t4)     # clientes[numClientes].conta[7] = '0'
    		
    		la $a0, 39($t4)	# Carrega em $a0 a posicao inicial do nome do cliente 	(cliente[numClientes].nome[0])
    		la $a1, nome	# Carrega em $a1 o nome digitado pelo usuario, que estava na memoria
    		jal strcpy3	# Chama a funcao memcpy

    		# Mensagem de sucesso  
    		print_str(CLIENTE_CADASTRADO_MSG)  # $a0 = string para cliente cadastrado, definida no .data
    		
    		la $a0, 11($t4)		# Carrega em $a0 a posicao inicial do numero da conta do cliente (cliente[numClientes].conta[0])
		jal print_numConta      # Chama a funcao para imprimir o numero da conta com o digito verificador
		print_bl()		# Imprime uma quebra de linha	

    		# Incrementar numClientes
    		addi $s0, $s0, 1	# numClientes = numClientes + 1
    		
    		# Zerar nome do cliente
    		la $a0, nome
    		jal zerarString

    		j fimFuncao	# Jump para fim da funcao, para retornar ao main    		    	

	transferirDebito:
		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente ; $s2 = 50 (num Max de clientes)
		
		move $t4, $s1  	# Endereco para encontrar o cliente1
		move $t5, $s1  	# Endereco para encontrar o cliente2		
    		li $t6, 0	# $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_duas_contaCliente(contaComDigito1, contaAtual1, contaComDigito2, contaAtual2, conversao_Saldo_Fatura_Limite)  # Procura os 2 clientes pelo numero da conta, fornecendo os labels necessarios 		      	
    		   		
    		conversao_Saldo_Fatura_Limite:
    		# Neste momento, na memoria em $t4 esta o endereco do meu cliente1 e $t5 esta o endereco do meu cliente2
    		# Tira do saldo do cliente 2 e paga a fatura do cliente 1
    				addi $sp, $sp, -12 # Reserva 3 espacos na pilha
    				sw $t5, 0($sp) 	# salva na pilha o endereco do cliente que fez a transferencia
    				sw $t6, 4($sp) 	# salva na pilha o contador do numero do meu cliente atual
    				la $t8, tipoTransferencia_D	# Carrega em $t8 o endereco do caractere para tipo de transferencia = debito
    				sw $t8, 8($sp) 	# salva na pilha o endereco do caractere para tipo de transferencia = debito
    				
				la $a0, valor		# Carrega em $a0 o endereco do valor a ser sacado, tirado do input	
    				addi $a0, $a0, 5	# Soma em $a0 a posicao do ultimo byte do valor a ser sacado	
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s7, $v0	# Carrega em $s7 o valor a ser transferido da conta 2 para conta 1 convertido
				
			subtrairDoSaldoFatura_somarLimite:
				# Subtrai do saldo, e converte o novo saldo para string
				la $a0, 24($t5)	# Carrega em $a0 a posicao do ultimo byte do saldo da conta do cliente2		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor do saldo convertido do cliente 2
								
				bgt $s7, $s6, saldo_insuficienteTransferencia # Verifica se o valor eh maior que o saldo, se for, vai para erro
				sub $t1, $s6, $s7 	# Subtrai o valor do saldo do cliente 2 e armazena em $t1
			
				move $a0, $t1		# Carrega em $a0 o numero, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo saldo convertido para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 19($t5)		# Carrega em $a0 a posicao inicial do saldo do cliente (cliente[numClientes].saldo[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor do novo saldo que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy
    				
    				# Converte o limite para int, para somar o valor 
    				la $a0, 30($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente1		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor do limite convertido do cliente 1
				
				add $t1, $s6, $s7 	# Adiciona o valor ao limite do cliente 1 e armazena em $t1
				
				move $a0, $t1		# Carrega em $a0 o numero do novo limite, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo limite convertido para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 25($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor do novo limite que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy
    				
    				# Converte a fatura para int, para subtrair o valor 
    				la $a0, 36($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente1		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor da fatura convertido do cliente 1
				
				sub $t1, $s6, $s7 	# Subtrai o valor da fatura do cliente 1 e armazena em $t1
				
				move $a0, $t1		# Carrega em $a0 o numero da nova fatura, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar a nova fatura convertida para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 31($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].fatura[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor da nova fatura que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy   				
    				
    				jal atualizar_hora	# Chama a funcao para definir a hora atual
    				
    				# Mensagem de sucesso  
    				print_str(TRANSFERENCIA_REALIZADA_D_MSG)  # $a0 = string para transferencia realizada, definida no .data
    				print_int($s7)		# $a0 = valor da transferencia
				print_bl()		# Imprime uma quebra de linha
		
				# Exibe as contas envolvidas 
				print_str(TRANSFERIDO_DE_MSG) # $a0 = string para transferido de, definida no .data
				la $a0, 11($t5)		# Carrega em $a0 a posicao inicial do numero da conta do cliente2
				jal print_numConta	# Chama a funcao para imprimir o numero da conta com o digito verificador		
				print_bl()		# Imprime uma quebra de linha
				
				print_str(TRANSFERIDO_PARA_MSG) # $a0 = string para transferido de, definida no .data
				la $a0, 11($t4)		# Carrega em $a0 a posicao inicial do numero da conta do cliente2
				jal print_numConta	# Chama a funcao para imprimir o numero da conta com o digito verificador		
				print_bl()		# Imprime uma quebra de linha
				
				j cadastrar_extrato
				    			
    		

	transferirCredito:   			
 		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente ; $s2 = 50 (num Max de clientes)
		
		move $t4, $s1  	# Endereco para encontrar o cliente1
		move $t5, $s1  	# Endereco para encontrar o cliente2
    		li $t6, 0	# $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_duas_contaCliente(contaComDigito1, contaAtual1, contaComDigito2, contaAtual2, conversao_Limite1_Fatura1_Fatura2_Limite2)  # Procura os 2 clientes pelo numero da conta, fornecendo os labels necessarios

    		conversao_Limite1_Fatura1_Fatura2_Limite2:
    		# Neste momento, na memoria em $t4 esta o endereco do meu cliente1 e $t5 esta o endereco do meu cliente2
    		# Tira do limite e acrescenta na fatura do cliente 2 e paga a fatura do cliente 1   				    		
    				addi $sp, $sp, -12 # Reserva 3 espacos na pilha
    				sw $t5, 0($sp) 	# salva na pilha o endereco do cliente que fez a transferencia
    				sw $t6, 4($sp) 	# salva na pilha o contador do numero do meu cliente atual
    				la $t8, tipoTransferencia_C	# Carrega em $t8 o endereco do caractere para tipo de transferencia = credito
    				sw $t8, 8($sp) 	# salva na pilha o endereco do caractere para tipo de transferencia = credito
    								
				la $a0, valor		# Carrega em $a0 o endereco do valor a ser sacado, tirado do input	
    				addi $a0, $a0, 5	# Soma em $a0 a posicao do ultimo byte do valor a ser sacado	
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s7, $v0	# Carrega em $s7 o valor a ser transferido da conta 2 para conta 1 convertido
				
			subtrairDaFatura1_somarLimite2:
				# Converte o limite do cliente 2 para int, subtrai do limite, e converte o novo limite para string
				la $a0, 30($t5)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente2		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor do limite convertido do cliente 2
			
				bgt $s7, $s6, limite_insuficiente # Verifica se o valor eh maior que o limite, se for, vai para erro
				sub $t1, $s6, $s7 	# Subtrai o valor do limite do cliente 2 e armazena em $t1
			
				move $a0, $t1		# Carrega em $a0 o endereco o numero, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo saldo convertido para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 25($t5)		# Carrega em $a0 a posicao inicial do limite do cliente 2
    				la $a1, valorConvertido	# Carrega em $a1 o valor do novo limite que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy
    				
    				# Converte a fatura do cliente 2 para int, adiciona na fatura, e converte a nova fatura para string
    				la $a0, 36($t5)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente1		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor da fatura convertido do cliente 2
				
				add $t1, $s6, $s7 	# Adiciona o valor na fatura do cliente 2 e armazena em $t1
				
				move $a0, $t1		# Carrega em $a0 o endereco o numero da nova fatura, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar a nova fatura convertida para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 31($t5)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].fatura[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor da nova fatura que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy  
    				
    				# Converte o limite do cliente 1 para int, adiciona ao limite, e converte o novo limite para string
    				la $a0, 30($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente1		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor do limite convertido do cliente 2
				
				add $t1, $s6, $s7 	# Adiciona o valor ao limite do cliente 2 e armazena em $t1
				
				move $a0, $t1		# Carrega em $a0 o endereco o numero do novo limite, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo limite convertido para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 25($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor do novo limite que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy
    				
    				# Converte a fatura do cliente 1 para int, subtrai da fatura, e converte a nova fatura para string
    				la $a0, 36($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente1		    			
    				jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
				move $s6, $v0	# Carrega em $s6 o valor da fatura convertido do cliente 1
				
				sub $t1, $s6, $s7 	# Subtrai o valor da fatura do cliente 1 e armazena em $t1
				
				move $a0, $t1		# Carrega em $a0 o endereco o numero da nova fatura, para converter para string
				la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar a nova fatura convertida para string
				jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    				la $a0, 31($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].fatura[0])
    				la $a1, valorConvertido	# Carrega em $a1 o valor da nova fatura que foi convertido pra string, salvo na memoria
    				la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    				jal memcpy		# Chama a funcao memcpy   				

    				jal atualizar_hora	# Chama a funcao para definir a hora atual
    				
    				# Mensagem de sucesso  
    				print_str(TRANSFERENCIA_REALIZADA_C_MSG)  # $a0 = string para transferencia realizada, definida no .data
    				print_int($s7)		# $a0 = valor da transferencia
				print_bl()		# Imprime uma quebra de linha
		
				# Exibe as contas envolvidas 
				print_str(TRANSFERIDO_DE_MSG) # $a0 = string para transferido de, definida no .data
				la $a0, 11($t5)		# Carrega em $a0 a posicao inicial do numero da conta do cliente2
				jal print_numConta	# Chama a funcao para imprimir o numero da conta com o digito verificador		
				print_bl()		# Imprime uma quebra de linha
				
				print_str(TRANSFERIDO_PARA_MSG) # $a0 = string para transferido de, definida no .data
				la $a0, 11($t4)		# Carrega em $a0 a posicao inicial do numero da conta do cliente1
				jal print_numConta	# Chama a funcao para imprimir o numero da conta com o digito verificador		
				print_bl()		# Imprime uma quebra de linha				    			
    			
    				j cadastrar_extrato
    		
    	cadastrar_extrato:
    	# Cada extrato tem 38 bytes e eh estruturado da seguinte maneira: 0-7 bytes = numConta Transferiu / 8-15 bytes = numConta Recebeu / 16-21 bytes = valor / 22 byte = tipo Transferencia / 23-30 bytes = data / 31 byte = hifen / 32-37 bytes = hora
    		lw $t5, 0($sp) # O endereco do cliente que esta transferindo
    		
    		la $a0, 38($t5)       	# Carrega em $a0 o endereco do ultimo byte do contador de extratos          
		jal converte_stringData_int # Jump para funcao que converte a string em um inteiro
		move $s6, $v0    	# Carrega em $s6 o valor do contador de extratos convertido
    		
    		lw $a3, 8($sp) # endereco para o caractere do tipo da transferencia
    		lw $t1, 4($sp) # num do cliente atual (contador)   		 		
    		
    		la $t4, extratos0  # endereco base do bloco de extrato   	   		
    		mul $t3, $t1, 1900 # multiplica o numero do cliente x 1900 para obter o valor a ser somado para obter a base 
    		add $t4, $t4, $t3  # soma ao endereco base do extrato, para obter a posicao incial de onde comeca o extrato do meu cliente x		
		
		#bge $t6, $s2, #FALTA FAZER VERIFICA SE E 50
		addi $t7, $s6, 38
        	add $t4, $t4, $t7
		
		# Parametros -> $a0 - destination; $a1 - source; $a2 - num
		la $a0, 0($t4)		# Carrega em $a0 a posicao inicial da conta de quem fez a transferencia
		la $a1, contaAtual2	# Carrega em $a1 o endereco na memoria para o num da contaAtual2
		li $a2, 8		# Num de bytes a serem copiados de "contaAtual2"
		jal memcpy		# Chama a funcao memcpy
		
		la $a0, 8($t4) 		# Carrega em $a0 a posicao inicial da conta de quem recebeu a transferencia
		la $a1, contaAtual1	# Carrega em $a1 o endereco na memoria para o num da contaAtual1
		li $a2, 8		# Num de bytes a serem copiados de "contaAtual1"
		jal memcpy		# Chama a funcao memcpy
		
		la $a0, 16($t4) # Carrega em $a0 a posicao inicial do valor da transferencia
		la $a1, valor	# Carrega em $a1 o endereco na memoria para o num da contaAtual2
		li $a2, 6	# Num de bytes a serem copiados de "valor"
		jal memcpy	# Chama a funcao memcpy
		
		lb $a0, 0($a3)	# Carrega em $a0 o caractere do tipo de transferencia
		sb $a0, 22($t4)	# Armazena no extrato o tipo de transferencia
		
		la $a0, 23($t4) # Carrega em $a0 a posicao inicial da data da transferencia
		la $a1, data	# Carrega em $a1 o endereco na memoria da data
		li $a2, 8	# Num de bytes a serem copiados de "data"
		jal memcpy	# Chama a funcao memcpy
		
		li $a0, '-'         # Carrega em $ta0 o caractere '-'
   		sb $a0, 31($t4)     # Armazena o '-' para separar data e hora
		
		la $a0, 32($t4) # Carrega em $a0 a posicao inicial da hora da transferencia
		la $a1, horario	# Carrega em $a1 o endereco na memoria do horario
		li $a2, 6	# Num de bytes a serem copiados de "hora"
		jal memcpy	# Chama a funcao memcpy
				
		addi $s6, $s6, 1	# Incrementa o contador de extratos do cliente que transferiu			
		
		move $a0, $s6			# Carrega em $a0 o numero do contador de extratos, para converter para string
		la $a1, extrato 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
		jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
		
		lw $t5, 0($sp) # O endereco do cliente que esta transferindo	
		
    		la $a0, 37($t5)	# Carrega em $a0 a posicao inicial do contador de extratos do cliente
    		la $a1, extrato	# Carrega em $a1 o valor do novo segundo que foi convertido pra string, salvo na memoria
    		la $a2, 2	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    		jal memcpy	# Chama a funcao memcpy		
		
		addi $sp, $sp, 12 # Devolve o espaco reservado pra pilha  
		
		j fimFuncao    		
    		
    	alterarLimite:
		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente
		
		move $t4, $s1  	# Endereco para encontrar o cliente que vai ter o limite alterado
    		li $t6, 0	# $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_contaCliente(contaComDigito, contaAtual, cliente_encontrado) # Procura o cliente pelo numero da conta, fornecendo os labels necessarios
    		
    		cliente_encontrado:
    			# Neste momento, $t4 possui o valor do cliente que sera alterado o limite
    			la $a0, 25($t4)	# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    			la $a1, valor	# Carrega em $a1 o valor do limite digitado no input, que foi salvo na memoria
    			la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valor"
    			jal memcpy	# Chama a funcao memcpy	

			# Mensagem de sucesso  
    			print_str(LIMITE_ALTERADO_MSG)  # $a0 = string para limite alterado, definida no .data
    		
    			la $a0, 11($t4)		# Carrega em $a0 a posicao inicial do numero da conta do cliente (cliente[numClientes].conta[0])
			jal print_numConta      # Chama a funcao para imprimir o numero da conta com o digito verificador
			print_bl()		# Imprime uma quebra de linha
		
			# Exibe o novo limite 
			print_str(LIMITE_MSG)  # $a0 = string para novo limite, definida no .data
			print_str(valor)	# $a0 = valor do novo limite, apos alteracao
			print_bl()		# Imprime uma quebra de linha
		
    		j fimFuncao	# Jump para fim da funcao, para retornar ao main
    		
        contaFechar:
        	# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $s2 = 50 (num Max de clientes)
		
    		move $t4, $s1  	# Endereco para encontrar o cliente que vai ter o limite alterado
    		li $t6, 0	# $t6 = 0, contador para saber se ja passou por todos os clientes
    		
        	loop_cpfCliente:
    			# Cada cliente tem 64 bytes e é estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
        		la $a0, cpfAtual	# Carrega em $a0 a posicao inicial do espaco na memoria para guardar o CPF do cliente atual
        		la $a1, 0($t4)		# Carrega em $a1 a posicao inicial do cpf do cliente atual
        		la $a2, 11	# Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
        		jal memcpy	# Chama memcpy // copita até um byte específico, nesse caso 11
		
			la $a0, cpf		# Carrega em $a0 o cpf, tirado do input
    			la $a1, cpfAtual	# Carrega em $a1 o cpfAtual, para verificar se o cpf eh igual ao do input
    			jal strcmp
    			
    			beqz $v0, verificaSaldo  # Se $v0 = 0, pula para label verificaSaldo
    			
    			addi $t4, $t4, 64	# Avanca 64 bytes para ir para o proximo cliente
    			addi $t6, $t6, 1	# Acrescenta 1 ao contador de clientes procurados
			
			beq $s2, $t6, erro_Cpf 	# Caso o contador chegue em 50 (maximo) = passou por todos e nao encontrou, ai vai para o erro
    			j loop_cpfCliente	# Enquanto $v0 != 0 e o contador nao chegar a 50 clientes, continua procurando
    		
    		verificaSaldo:
    			la $a0, saldoAtual	# Carrega em $a0 a posicao inicial do espaco na memoria para guardar o saldo do cliente atual
        		la $a1, 19($t4)	# Carrega em $a1 a posicao inicial do saldo da conta do cliente atual
        		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
        		jal memcpy	# Chama memcpy // copita ate um byte especifico, nesse caso 5
    			
    			la $a0, saldo
    			la $a1, saldoAtual
    			jal strcmp 		# Faz a comparacao entre saldo e saldo atual    	   		
    			
    			beqz $v0, verificaFatura  # Se $v0 = 0, saldos sao iguais e pula para label verificaFatura
    			
    			j conta_NaoZerada
    			
    		verificaFatura:
    			la $a0, faturaAtual	# Carrega em $a0 a posicao inicial do espaco na memoria para guardar a fatura do cliente atual
        		la $a1, 31($t4)	# Carrega em $a1 a posicao inicial da fatura da conta do cliente atual
        		la $a2, 6	# Carrega em $a2 a quantidade de bytes a serem copiadas do cliente atual
        		jal memcpy	# Chama memcpy // copita até um byte específico, nesse caso 5
    			
    			la $a0, fatura 		# Carrega em $a0 a string da minha fatura exemplo da memoria 
    			la $a1, faturaAtual 	# Carrega em $a0 a string da fatura copiada
    			jal strcmp # Faz a comparacao entre fatura atual e fatura   			
    			
    			beqz $v0, conta_fechada  # Se $v0 = 0, faturas sao iguais e pula para label conta_fechada
    			
    			j conta_NaoZerada
    		
    		conta_fechada:
    			print_str(CONTA_FECHADA_MSG)
    
    			la $a0, 0($t4)		# Carrega em $a0 a posicao inicial do meu cliente a ser zerado
    			jal zerarString 	# Chama a funcao zerar string
    		
    		j fimFuncao
    		
    	sacar:
    		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente ; $s2 = 50 (num Max de clientes) ; $s6 = saldo convertido ; $s7 = valor convertido
    		move $t4, $s1 # endereço dos clientes
    		li $t6, 0 # $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_contaCliente(contaComDigito, contaAtual, conversaoSaldoValorS) # Procura o cliente pelo numero da conta, fornecendo os labels necessarios
    		
    		conversaoSaldoValorS:
    			# Neste momento, $t4 possui o valor do cliente que sera alterado o limite
    			la $a0, 24($t4)	# Carrega em $a0 a posicao do ultimo byte do saldo da conta do cliente atual   		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do saldo convertido
			
			la $a0, valor		# Carrega em $a0 o endereco do valor a ser sacado, tirado do input	
    			addi $a0, $a0, 5	# Soma em $a0 a posicao do ultimo byte do valor a ser sacado	
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s7, $v0	# Carrega em $s7 o valor a ser sacado convertido
				
		subtrairDaConta:
			bgt $s7, $s6, saldo_insuficiente	# Verifica se o valor eh maior que o saldo, se for, vai para erro
			sub $t1, $s6, $s7 	# Subtrai o valor do saldo e armazena em $t1
			
			move $a0, $t1		# Carrega em $a0 o endereco o numero, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo saldo convertido para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 19($t4)		# Carrega em $a0 a posicao inicial do saldo do cliente (cliente[numClientes].saldo[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor do novo saldo que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy	

			# Mensagem de sucesso  
    			print_str(SAQUE_REALIZADO_MSG)  # $a0 = string para limite alterado, definida no .data
    			print_int($s7)		# $a0 = valor do saque
			print_bl()		# Imprime uma quebra de linha
		
			# Exibe o novo saldo 
			print_str(SALDO_MSG)  # $a0 = string para novo saldo, definida no .data
			print_str(valorConvertido) # $a0 = valor do novo saldo, apos alteracao
			print_bl()		   # Imprime uma quebra de linha
					
		j fimFuncao
	
	depositar:
    		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente ; $s2 = 50 (num Max de clientes) ; $s6 = saldo convertido ; $s7 = valor convertido
    		move $t4, $s1 # endereço dos clientes
    		li $t6, 0 # $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_contaCliente(contaComDigito, contaAtual, conversaoSaldoValorD) # Procura o cliente pelo numero da conta, fornecendo os labels necessarios   		  
    		
    		conversaoSaldoValorD:
    			# Neste momento, $t4 possui o valor do cliente que sera alterado o limite
    			la $a0, 24($t4)	# Carrega em $a0 a posicao do ultimo byte do saldo da conta do cliente atual   		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do saldo convertido
			
			la $a0, valor		# Carrega em $a0 o endereco do valor a ser sacado, tirado do input	
    			addi $a0, $a0, 5	# Soma em $a0 a posicao do ultimo byte do valor a ser depositado	
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s7, $v0	# Carrega em $s7 o valor a ser sacado convertido
				
		acrescentarNaConta:
			add $t1, $s6, $s7 	# Adiciona o valor ao saldo e armazena em $t1
			
			move $a0, $t1		# Carrega em $a0 o endereco o numero, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo saldo convertido para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 19($t4)		# Carrega em $a0 a posicao inicial do saldo do cliente (cliente[numClientes].saldo[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor do novo saldo que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy	

			# Mensagem de sucesso  
    			print_str(DEPOSITO_REALIZADO_MSG)  # $a0 = string para limite alterado, definida no .data
    			print_int($s7)		# $a0 = valor do deposito
			print_bl()		# Imprime uma quebra de linha
		
			# Exibe o novo saldo 
			print_str(SALDO_MSG)  # $a0 = string para novo saldo, definida no .data
			print_str(valorConvertido) # $a0 = valor do novo saldo, apos alteracao
			print_bl()		   # Imprime uma quebra de linha
					
		j fimFuncao
	
	pagarFatura:
		# Cada cliente tem 64 bytes e eh estruturado da seguinte maneira: 0-10 bytes = CPF / 11-18 bytes = numConta / 19-24 bytes = saldo / 25-30 bytes = limite / 31-36 bytes = fatura / 37-63 bytes = nome
		# Variaveis locais: $s1 = endereco do bloco de clientes; $t4 = endereco do cliente atual ; $t6 = contador para buscar o cliente
		
		move $t4, $s1 	# endereço dos clientes
    		li $t6, 0 	# $t6 = 0, contador para saber se ja passou por todos os clientes
    		
    		buscar_contaCliente(contaComDigito, contaAtual, cliente_localizado) # Procura o cliente pelo numero da conta, fornecendo os labels necessarios
		
		cliente_localizado:
			# Neste momento, $t4 possui o valor do cliente que sera alterado a fatura e talvez saldo
			la $a0, 36($t4)		# Carrega em $a0 a posicao do ultimo byte da fatura da conta do cliente		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
			move $s6, $v0		# Carrega em $s6 o valor do fatura convertido do cliente
	
			la $a0, valor		# Carrega em $a0 o endereco do valor a ser sacado, tirado do input	
    			addi $a0, $a0, 5	# Soma em $a0 a posicao do ultimo byte do valor a ser sacado	
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro	
			move $s7, $v0	# Carrega em $s7 o valor a ser pago
			
			bgt $s7, $s6, erro_valorInserido	# Verifica se o valor eh maior que a fatura, se for vai para erro
				
			la $a0, metodoPagamento	# Carrega em $a0 o metodo de pagamento digitado no input, salvo na memoria
			la $a1, metodoPagmentoS	# Carrega em $a1 o metodo de pagamento "S", salvo na memoria
			jal strcmp		# Compara as duas strings
			
			beqz $v0, pagarFaturaSaldo	# Se forem iguais, o metodo eh saldo
			
			j pagarFaturaExterno	# Se nao forem iguais, o metodo eh pagamento externo
			
		pagarFaturaSaldo:
			# Converte saldo para int, subtrai o valor do saldo, e converte o novo saldo para string
			la $a0, 24($t4)	# Carrega em $a0 a posicao do ultimo byte do saldo da conta do cliente	    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do saldo convertido do cliente 
			
			bgt $s7, $s6, saldo_insuficiente # Verifica se o valor eh maior que o saldo, se for, vai para erro
			sub $t1, $s6, $s7 	# Subtrai o valor do saldo do cliente e armazena em $t1
						
			move $a0, $t1		# Carrega em $a0 o numero do novo saldo, para converter para string					
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo saldo convertido para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 19($t4)		# Carrega em $a0 a posicao inicial do saldo do cliente (cliente[numClientes].saldo[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor do novo saldo que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy
    			
    			# Converte o limite para int, soma o valor ao limite, e converte o novo limite para string
    			la $a0, 30($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do limite convertido do cliente 1
				
			add $t1, $s6, $s7 	# Adiciona o valor ao limite do cliente 1 e armazena em $t1
				
			move $a0, $t1		# Carrega em $a0 o numero do novo limite, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo limite convertido para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 25($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor do novo limite que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy
    				
    			# Converte a fatura para int, subtrai o valor  da fatura, e converte nova fatura para string
    			la $a0, 36($t4)	# Carrega em $a0 a posicao do ultimo byte da fatura da conta do cliente		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor da fatura convertido do cliente
				
			sub $t1, $s6, $s7 	# Subtrai o valor da fatura do cliente 1 e armazena em $t1
				
			move $a0, $t1		# Carrega em $a0 o numero da nova fatura, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar a nova fatura convertida para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 31($t4)		# Carrega em $a0 a posicao inicial da fatura do cliente (cliente[numClientes].fatura[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor da nova fatura que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy
    			
    			# Mensagem de sucesso  
    			print_str(PAGAMENTO_REALIZADO_S_MSG)  # $a0 = string para pagamento realizado no debito, definida no .data
    			print_int($s7)		# $a0 = valor do pagamento
			print_bl()		# Imprime uma quebra de linha
		
			# Exibe o novo saldo 
			print_str(FATURA_MSG)  # $a0 = string para fatura, definida no .data
			print_str(valorConvertido) # $a0 = valor da nova fatura, apos o pagamento
			print_bl()		   # Imprime uma quebra de linha
    			
    			j fimFuncao
    				
		pagarFaturaExterno:		
			# Converte o limite para int, soma o valor ao limite, e converte o novo limite para string
			la $a0, 30($t4)	# Carrega em $a0 a posicao do ultimo byte do limite da conta do cliente		    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do limite convertido do cliente
				
			add $t1, $s6, $s7 	# Adiciona o valor ao limite do cliente e armazena em $t1
				
			move $a0, $t1		# Carrega em $a0 o endereco o numero do novo limite, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar o novo limite convertido para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 25($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].limite[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor do novo limite que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy
    				
    			# Converte a fatura para int, subtrai o valor  da fatura, e converte nova fatura para string
    			la $a0, 36($t4)	# Carrega em $a0 a posicao do ultimo byte da fatura da conta do client	    			
    			jal converte_string_int	# Jump para funcao que converte a string em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor da fatura convertido do cliente
				
			sub $t1, $s6, $s7 	# Subtrai o valor da fatura do cliente e armazena em $t1
				
			move $a0, $t1		# Carrega em $a0 o endereco o numero da nova fatura, para converter para string
			la $a1, valorConvertido # Carrega em $a1 o endereco do espaco para guardar a nova fatura convertida para string
			jal converte_int_string	# Jump para funcao que converte um inteiro em uma string
			
    			la $a0, 31($t4)		# Carrega em $a0 a posicao inicial do limite do cliente (cliente[numClientes].fatura[0])
    			la $a1, valorConvertido	# Carrega em $a1 o valor da nova fatura que foi convertido pra string, salvo na memoria
    			la $a2, 6	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "valorConvertido"
    			jal memcpy		# Chama a funcao memcpy
    			
    			# Mensagem de sucesso  
    			print_str(PAGAMENTO_REALIZADO_E_MSG)  # $a0 = string para pagamento realizado externo, definida no .data
    			print_int($s7)		# $a0 = valor do pagamento
			print_bl()		# Imprime uma quebra de linha
		
			# Exibe o novo saldo 
			print_str(FATURA_MSG)  # $a0 = string para fatura, definida no .data
			print_str(valorConvertido) # $a0 = valor da nova fatura, apos o pagamento
			print_bl()		   # Imprime uma quebra de linha
    			
    			j fimFuncao
    			
    	# Funcao para formatar o extrato de uma conta
	contaFormat:
		move $t4, $s1  	# Endereco para encontrar o cliente que vai ter o limite alterado
    		li $t6, 0	# $t6 = 0, contador para saber se ja passou por todos os clientes
		buscar_contaCliente(contaComDigito, contaAtual, formatarConta)
		formatarConta:
			la $t0, extratos0 # Carrega o endereço base do bloco de extratos
			mul $a0, $t6, 1900 # Multiplica o contador por 1900 pra achar o bloco de extratos correspondente ao cliente
			add $a0, $t0, $t1   # SOMA: $a0 = Endereço Base + Deslocamento
            li $t2, 1900 # Numero total de bytes de um extrato de um cliente
			li $t3, 0 # Contador pros bytes
			li $t5, 0  # O valor 0 (nulo)

			# loop pra zerar string
			loop_zerar:
        			beq $t3, $t2, fimFuncao # Verifica se chegou ao final do extrato, se sim termina a execucao
        			sb $t0, 0($a0)   # Insere o caractere nulo na posicao atual da string
        			addi $a0, $a0, 1  # Avança para o próximo caractere na string
        			addi $t3, $t3, 1 # Incrementa o contador
        			j loop_zerar
        			
        # Funcao pra imprimir a lista de operacoes com debito no extrato
        debitoExtrato:
        	move $t4, $s1 # Endereco base de cliente0
    		li $t6, 0 # $t6 = 0, contador para saber se ja passou por todos os clientes
    		la $t0, extratos0 # Carrega o endereco base do bloco de extratos
    		# Pra comparar no contador 
    		li $t7, 50
    		li $t8, 0
		buscar_contaCliente(contaComDigito, contaAtual, procuraRegistroD)
		
		procuraRegistroD: 
		la $t9, extratos0  # Carrega o ENDEREÇO BASE dos extratos
        mul $t5, $t6, 1900 # Multiplica o contador por 1900 pra achar o bloco de extratos correspondente ao cliente
		add $t5, $t9, $t5  #SOMA: $t5 = Endereço Real (Base + Offset)
        # move $t5, $t4 # Move o endereco base do bloco pra $t5
			loop_debitoExtrato:
				beq $t8, $t7, fimFuncao # Se o contador chegar a 50 a funcao encerra
				# Pra comparar o caractere tipoTransferencia de cada registro do extrato
				la $a0, 22($t5) # Carrega o byte tipoTransferencia no registro
				la $a1, tipoTransferencia_D
				li $a3, 1
				jal strncmp
				beq $v0, $zero, printRegistroD # Se o byte for 'D' printa o registro do extrato
				bne $v0, $zero, continuaLoopD # Se nao for so continua o loop
				
					printRegistroD: # Parte pra printar o registro
						la $a0, registroDoExtrato # Pra copiar o registro pra $a0
						move $a1, $t5 # Endereco do registro
						li $a2, 38 # Numero de bytes a serem copiados
						jal memcpy
						print_str(registroDoExtrato)
						print_bl()
						addi $t8, $t8, 1 # Incrementa o contador
						addi $t5, $t5, 38 # Pro proximo registro do extrato
						
						j loop_debitoExtrato
					
					continuaLoopD: # Continuar o loop pro proximo registro
						addi $t8, $t8, 1 # Incrementa o contador
						addi $t5, $t5, 38 # Pro proximo registro do extrato
						
						j loop_debitoExtrato			
				
			
	 # Funcao pra imprimir a lista de operacoes com credito no extrato
	 creditoExtrato:
        	move $t4, $s1 # Endereco base de cliente0
    		li $t6, 0 # $t6 = 0, contador para saber se ja passou por todos os clientes
    		la $t0, extratos0 # Carrega o endereco base do bloco de extratos
    		# Pra comparar no contador 
    		li $t7, 50
    		li $t8, 0
		buscar_contaCliente(contaComDigito, contaAtual, procuraRegistroC)
		
		procuraRegistroC: 
		mul $t5, $t6, 1900 # Multiplica o contador por 1900 pra achar o bloco de extratos correspondente ao cliente
			loop_creditoExtrato:
				beq $t8, $t7, fimFuncao # Se o contador chegar a 50 a funcao encerra
				# Pra comparar o caractere tipoTransferencia de cada registro do extrato
				la $a0, 22($t5) # Carrega o byte tipoTransferencia no registro
				la $a1, tipoTransferencia_C
				li $a3, 1
				jal strncmp
				beq $v0, $zero, printRegistroC # Se o byte for 'C' printa o registro do extrato
				bne $v0, $zero, continuaLoopC # Se nao for so continua o loop
				
					printRegistroC: # Parte pra printar o registro
						la $a0, registroDoExtrato # Pra copiar o registro pra $a0
						move $a1, $t5 # Endereco do registro
						li $a2, 38 # Numero de bytes a serem copiados
						jal memcpy
						print_str(registroDoExtrato)
						print_bl()
						addi $t8, $t8, 1 # Incrementa o contador
						addi $t5, $t5, 38 # Pro proximo registro do extrato
						
						j loop_creditoExtrato
					
					continuaLoopC: # Continuar o loop pro proximo registro
						addi $t8, $t8, 1 # Incrementa o contador
						addi $t5, $t5, 38 # Pro proximo registro do extrato
						
						j loop_creditoExtrato			
	
	dataHora:
		chama_memcpy_labels(2, 0, data, 0, dia)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
    	
    		chama_memcpy_labels(2, 2, data, 0, mes)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
    	
    		chama_memcpy_labels(4, 4, data, 0, ano)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
    		
    		chama_memcpy_labels(2, 0, horario, 0, hora) # Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
    	
    		chama_memcpy_labels(2, 2, horario, 0, minuto) # Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination

    		chama_memcpy_labels(2, 4, horario, 0, segundo) # Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
		
		
		verificando_valoresData:		
			converte_verifica_data(dia, 31)	# Converte o dia para int e verifica se eh maior que 31			
			
			converte_verifica_data(mes, 12) # Converte o mes para int e verifica se eh maior que 12
						
			converte_verifica_data(hora, 24) # Converte a hora para int e verifica se eh maior que 24			
			
			converte_verifica_data(minuto, 59) # Converte o minuto para int e verifica se eh maior que 59
			
			converte_verifica_data(segundo, 59) # Converte o segundo para int e verifica se eh maior que 59
				
		# Como a data esta valida, darrega os ms da data atual do sistema
		li $v0, 30	# Codigo do syscall para obter a data e hora atual (em milissegundos)
		syscall
		
		move $s4, $a0	# Carrega em $s4 a parte menos significativa do tempo
		# move $s5, $a1	# Carrega em $s5 a parte mais significativa do tempo
		
		# Exibe a data registrada
		print_str(DATA_CONFIGURADA_MSG)  # $a0 = string para data configurada, definida no .data
		print_str(dia)		# $a0 = string do dia passado no input
		print_str(BARRA) 	# $a0 = "/"
		print_str(mes)  	# $a0 = string do mes passado no input
		print_str(BARRA)		# a0 = "/"
		print_str(ano) 		# $a0 = string do ano passado no input
		print_str(HIFEN) 	# $a0 = "-"
		print_str(hora)  	# $a0 = string da hora passada no input
		print_str(DOIS_PONTOS)  # $a0 = ":"
		print_str(minuto) 	# $a0 = string do minuto passado no input
		print_str(DOIS_PONTOS)  # $a0 = ":"
		print_str(segundo) 	# $a0 = string do segundo passado no input
		print_bl()		# Imprime uma quebra de linha
				
		j fimFuncao
	
	atualizar_hora:
		# Variaveis locais: $s4 = parte menos significativa do tempo da data definida
		# Primeiro executa o syscall 30 para tirar a diferenca
		li $v0, 30	# Codigo do syscall para obter a data e hora atual (em milissegundos)
		syscall
		
		move $t0, $a0 	# Guarda em $t0 a parte menos significativa do tempo atual
		
		sub $s5, $t0, $s4	# Subtrai o tempo atual do tempo definido, para obter a diferenca em ms
		
		# Agora converte o tempo e atualiza a string | 1000 ms = 1 s | 60000 ms = 1 min | 3600000 ms = 1 h | 86400000 ms = 1 dia | 2629800000 ms = 1 mes | 31557600000 ms = 1 ano		
		bge $s5, 1000, converteSegundos	# Verifica se tem 1000 ms, para converter para segundos
		
		converteSegundos:
			guardar_ra_pilha()	# Salva o $ra para voltar a transferencia na pilha
		
			la $a0, segundo		# Carrega em $a0 o endereco da data
    			addi $a0, $a0, 1	# Adiciona 1 ao endereco, para chegar ao ultimo byte    			
    			jal converte_stringData_int	# Jump para funcao que converte a string de data em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do segundo definido na memoria
			
			div $s5, $s5, 1000	# Divide por 1000, para saber quantos segundos adicionar
			mflo $t2	# Carrega o quociente, para adicionar esses segundos
			
			add $s6, $s6, $t2	# Soma a data definida a quantidade de segundos que passaram	
			
			bge $s6, 60, pegaResto_adicionaMinutos	# Se estourar 60 segundos, adiciona um minutos e salva o resto nos segundos
			
			move $a0, $s6			# Carrega em $a0 o numero dos novos segundos, para converter para string
			la $a1, dataConvertida 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
			jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
			
    			la $a0, segundo		# Carrega em $a0 a posicao inicial do segundo
    			la $a1, dataConvertida	# Carrega em $a1 o valor do novo segundo que foi convertido pra string, salvo na memoria
    			la $a2, 2	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    			jal memcpy		# Chama a funcao memcpy
    			
    			j fim_conversao
    			
    		pegaResto_adicionaMinutos:
    			# Adiciona o resto da divisao, para alterar os segundos antes
    			div $s6, $s6, 60	# Divide por 60, para saber quantos minutos adicionar
			mflo $a3	# Carrega o quociente, para adicionar os minutos que ultrapassaram
			mfhi $t2	# Carrega o resto, para adicionar os segundos que sobraram
			
			add $s6, $0, $t2	# Soma a data definida a quantidade de segundos que passaram
				
			move $a0, $s6			# Carrega em $a0 o numero dos novos segundos, para converter para string
			la $a1, dataConvertida 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
			jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
			
    			la $a0, segundo		# Carrega em $a0 a posicao inicial do segundo
    			la $a1, dataConvertida	# Carrega em $a1 o valor do novo segundo que foi convertido pra string, salvo na memoria
    			la $a2, 2	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    			jal memcpy		# Chama a funcao memcpy
			
			# Adiciona o quociente da divisao, para alterar os minutos
    			la $a0, minuto		# Carrega em $a0 o endereco da data
    			addi $a0, $a0, 1	# Adiciona 1 ao endereco, para chegar ao ultimo byte    			
    			jal converte_stringData_int	# Jump para funcao que converte a string de data em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor do minuto definido na memoria
				
			add $s6, $s6, $a3	# Soma a data definida a quantidade de minutos que passaram
			
			bge $s6, 60, pegaResto_adicionaHoras	# Se estourar 60 minutos, adiciona uma hora e salva o resto nos minutos	
				
			move $a0, $s6			# Carrega em $a0 o numero dos novos minutos, para converter para string
			la $a1, dataConvertida 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
			jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
			
    			la $a0, minuto		# Carrega em $a0 a posicao inicial do minuto
    			la $a1, dataConvertida	# Carrega em $a1 o valor do novo minuto que foi convertido pra string, salvo na memoria
    			la $a2, 2	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    			jal memcpy		# Chama a funcao memcpy
    			
    			j fim_conversao
    			
    		pegaResto_adicionaHoras:
    			# Adiciona o resto da divisao, para alterar os minutos antes
    			div $s6, $s6, 60	# Divide por 60, para saber quantas horas
			mflo $a3	# Carrega o quociente, para adicionar as horas que ultrapassaram
			mfhi $t2	# Carrega o resto, para adicionar os minutos que sobraram
			
			add $s6, $0, $t2	# Soma a data definida a quantidade de minutos que passaram
			beqz $s6, adiciona1	# Se o quociente der 0, adiciona 1 para ser o minuto 01	
					
			j converteMinutos
			
			adiciona1:
				addi $s6, $s6, 1	# Adiciona 1 aos minutos				
			
		converteMinutos:
			move $a0, $s6			# Carrega em $a0 o numero dos novos segundos, para converter para string
			la $a1, dataConvertida 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
			jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
			
    			la $a0, minuto		# Carrega em $a0 a posicao inicial do minuto
    			la $a1, dataConvertida	# Carrega em $a1 o valor do novo minuto que foi convertido pra string, salvo na memoria
    			la $a2, 2	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    			jal memcpy		# Chama a funcao memcpy
    			
    			# Adiciona o quociente da divisao, para alterar as horas
    			la $a0, hora		# Carrega em $a0 o endereco da data
    			addi $a0, $a0, 1	# Adiciona 1 ao endereco, para chegar ao ultimo byte    			
    			jal converte_stringData_int	# Jump para funcao que converte a string de data em um inteiro
				
			move $s6, $v0	# Carrega em $s6 o valor da hora definida na memoria
				
			add $s6, $s6, $a3	# Soma a data definida a quantidade de horas que passaram
			
			# bge $s6, 24, pegaResto_adicionaDias	# Se estourar 24 horas, adiciona uma um dia e salva o resto nas horas	
				
			move $a0, $s6			# Carrega em $a0 o numero das novas horas, para converter para string
			la $a1, dataConvertida 		# Carrega em $a1 o endereco do espaco para guardar a data convertida convertida para string
			jal converte_int_stringData 	# Jump para funcao que converte um inteiro em uma string de data
			
    			la $a0, hora		# Carrega em $a0 a posicao inicial do segundo
    			la $a1, dataConvertida	# Carrega em $a1 o valor da nova hora que foi convertido pra string, salvo na memoria
    			la $a2, 2	 	# Carrega em $a2 a quantidade de bytes a serem copiadas de "dataConvertida"
    			jal memcpy		# Chama a funcao memcpy
    			
    			j fim_conversao
    			
    		fim_conversao:   		
    		  	# Exibe a data atual da transferencia
			print_str(DATA_ATUAL_MSG)  # $a0 = string para fatura, definida no .data
			print_str(dia)		# $a0 = string do dia atualiazado
			print_str(BARRA) 	# $a0 = "/"
			print_str(mes)  	# $a0 = string do mes atualiazado
			print_str(BARRA)		# a0 = "/"
			print_str(ano) 		# $a0 = string do ano atualiazado
			print_str(HIFEN) 	# $a0 = "-"
			print_str(hora)  	# $a0 = string da hora atualiazada
			print_str(DOIS_PONTOS)  # $a0 = ":"
			print_str(minuto) 	# $a0 = string do minuto atualiazado
			print_str(DOIS_PONTOS)  # $a0 = ":"
			print_str(segundo) 	# $a0 = string do segundo atualiazado			
			
			# Atualiza as labels "data" e "horario" com os novos valores
			chama_memcpy_labels(2, 0, dia, 0, data)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
			chama_memcpy_labels(2, 0, mes, 2, data)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination	
			chama_memcpy_labels(4, 0, ano, 4, data)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
			chama_memcpy_labels(2, 0, hora, 0, horario)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
			chama_memcpy_labels(2, 0, minuto, 2, horario)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination
			chama_memcpy_labels(2, 0, segundo, 4, horario)	# Chama memcpy com o num de bytes a serem copiados, num para somar ao endereco de source, source, num para somar ao endereco de dest e destination			   						
					   			
    			carregar_ra_pilha()
			jr $ra		
	
	# Exceptions / Erros possiveis
	limiteAtingido:
   		print_str(LIMITE_ATINGIDO_MSG)  # $a0 = string para limite atingido, definida no .data
	
		j fimFuncao
		
	cliente_invalido:
    		print_str(CLIENTE_INVALIDO_MSG)	# $a0 = string para cliente invalido, definida no .data

    		j fimFuncao
   	
   	saldo_insuficiente:
   		print_str(SALDO_INSUFICIENTE_MSG) # $a0 = string para saldo insuficiente, definida no .data

    		j fimFuncao
    		
    	saldo_insuficienteTransferencia:
   		print_str(SALDO_INSUFICIENTE_TRANSFERENCIA_MSG) # $a0 = string para saldo insuficiente para transferencia, definida no .data

    		j fimFuncao
   	
   	erro_valorInserido:
        	print_str(VALOR_SUPERIOR_FATURA_MSG) # $a0 = string para valor superior a fatura, definida no .data

        	j fimFuncao
   	
   	limite_insuficiente:
   		print_str(LIMITE_INSUFICIENTE_MSG) # $a0 = string para limite insuficiente, definida no .data

    		j fimFuncao
   	
	conta_NaoZerada:
    		print_str(CONTA_NAOZERADA_MSG) 	# Endereco da string de conta nao zerada
    		la $a0, 19($t4)		# Carrega em $a0 a posicao inicial do saldo do cliente (cliente[numClientes].saldo[0])
		jal print_valor     	# Chama a funcao para imprimir um valor
		print_bl()		# Imprime uma quebra de linha
		
		print_str(FATURA_NAOPAGA_MSG)  # $a0 = string para a fatura nao paga, definida no .data
		la $a0, 31($t4)		# Carrega em $a0 a posicao inicial da fatura do cliente (cliente[numClientes].fatura[0])
		jal print_valor     	# Chama a funcao para imprimir um valor
		print_bl()		# Imprime uma quebra de linha
			
    		j fimFuncao
    		
    	erro_Cpf:  		
    		print_str(CPF_INVALIDO_MSG) 	# Endereco da string de cpf invalido
    		j fimFuncao  					

	data_invalida:  		
    		print_str(DATA_INVALIDA_MSG) 	# Endereco da string de data invalida
    		j fimFuncao  
	
	fimFuncao:
		carregar_ra_pilha()	# Carrega o $ra do main, salvo na pilha	
    		jr $ra			# Jump para o para o main_loop, para o usuario digitar outro comando	   		        	
                     
        salvar:
        	li $t4, 0 # Contador do loop clientes
        	li $t5, 0 # Contador do loop extratos
        	move $t6, $s1 # $s1 = clientes0
        	la $t7, conteudoArquivoClientes # Endereco de conteudoArquivoClientes
        	la $t8, conteudoArquivoExtratos # Endereco de conteudoArquivoExtratos
        	la $t9, extratos0 # Endereco base dos extratos
        	# $s0 = numClientes
        	
        	# Loop para copiar clientes
        	loopClientes:
        	beq $t4, $s0, loopExtratos # Se copiou todos os clientes va copiar os extratos
        	move $a0, $t7 # $a0 contem endereco do arquivo de clientes para receber a copia (destination)
        	move $a1, $t6 # $a1 contem o endereco do cliente a ser copiado (source)
        	li $a2, 64 # Numero de bytes a serem copiados do cliente para o arquivo
        	jal memcpy
        	addi $t4, $t4, 1 # Incrementa o contador de clientes copiados
        	addi $t6, $t6, 64 # Incrementa pro endereco do proximo cliente a ser copiado
        	addi $t7, $t7, 64 # Incrementa pro endereco do buffer do arquivo pra receber outra copia 
        	
        	j loopClientes
        	
        	# Loop para copiar extratos
        	loopExtratos:
        	beq $t5, $s0, gravaArquivo # Se copiou todos va gravar no arquivo
        	move $a0, $t8 # $a0 contem endereco do arquivo de extratos para receber a copia (destination)
        	move $a1, $t9 # $a1 contem o endereco do extrato a ser copiado (source)
        	li $a2, 1900 # Numero de bytes a serem copiados do extrato para o arquivo
        	jal memcpy
        	addi $t5, $t5, 1 # Incrementa o contador de extratos copiados
		addi $t9, $t9, 1900 # Incrementa pro endereco do proximo cliente a ser copiado
        	addi $t8, $t8, 1900 # Incrementa pro endereco do buffer do arquivo pra receber outra copia 
        	
        	j loopExtratos
        	
        	# Pra gravar os dados no arquivo
        	gravaArquivo:
        		gravaClientes:
        		# Abrir o arquivo
			li $v0, 13 # Abrir arquivo
			la $a0, localArquivoClientes
			li $a1, 1 # Indica o modo escrita
			syscall # Descritor estara em $v0
	
			move $t0, $v0 # Salvando descritor em $t0
	
			# Escrevendo a string no arquivo
			li $v0, 15 # Escrever no arquivo
			move $a0, $t0 # Movendo descritor para $a0
			la $a1, conteudoArquivoClientes # Endereço do buffer que contem o conteudo a ser copiado para o arquivo
			li $a2, 128 # Numero de caracteres a serem escritos no arquivo
			syscall
			
			# Fechar o arquivo
			li $v0, 16 # Para fechar
			move $a0, $t0 # Descritor do arquivo
			syscall
			j gravaExtratos
			
			gravaExtratos:
			# Abrir o arquivo
			li $v0, 13 # Abrir arquivo
			la $a0, localArquivoExtratos
			li $a1, 1 # Indica o modo escrita
			syscall # Descritor estara em $v0
	
			move $t0, $v0 # Salvando descritor em $t0
	
			# Escrevendo a string no arquivo
			li $v0, 15 # Escrever no arquivo
			move $a0, $t0 # Movendo descritor para $a0
			la $a1, conteudoArquivoExtratos # Endereço do buffer que contem o conteudo a ser copiado para o arquivo
			li $a2, 4000 # Numero de caracteres a serem escritos no arquivo
			syscall
			
			# Fechar o arquivo
			li $v0, 16 # Para fechar
			move $a0, $t0 # Descritor do arquivo
			syscall
			
			print_str(MEMORIA_GRAVADA_MSG)
			
			j fimFuncao #Se terminou as gravacoes da jump para fimFuncao, para voltar ao main_loop
        	
        	
        recarregar:
        	lerClientes:
        	# Abrir o arquivo no modo leitura
		li $v0, 13 # Solicita a abertura
		la $a0, localArquivoClientes # Endereço do arquivo
		li $a1, 0 # Flag indicando operação no arquivo: 0 -> Leitura, 1 -> Escrita
		syscall # Descritor do arquivo vai para $v0
		
		move $t5, $v0 # Descritor salvo em $t5
		
		move $a0, $v0 # Descritor precisa estar em $a0
		li $v0, 14 # Ler conteúdo do arquivo referenciado por $a0
		la $a1, conteudoArquivoClientes # Buffer que armazena o conteúdo
		li $a2, 128 # Informa o tamanho do buffer
		syscall # Leitura realizada
		
		la $a0, cliente0 # Carrega o endereco de cliente0 em $a0 (destination)
		la $a1, conteudoArquivoClientes # Carrega o endereco de conteudoArquivoClientes em $a1 (source)
		li $a2, 128 # Numero de bytes a serem copiados para cliente0
		jal memcpy
		
		# Fechar o arquivo
		li $v0, 16
		move $a0, $t5 # Vai fechar o arquivo que tem descritor em $a0, descritor estava salvo em $t5
		syscall
		
		lerExtratos:
		# Abrir o arquivo no modo leitura
		li $v0, 13 # Solicita a abertura
		la $a0, localArquivoExtratos # Endereço do arquivo
		li $a1, 0 # Flag indicando operação no arquivo: 0 -> Leitura, 1 -> Escrita
		syscall # Descritor do arquivo vai para $v0
		
		move $t5, $v0 # Descritor salvo em $t5
		
		move $a0, $v0 # Descritor precisa estar em $a0
		li $v0, 14 # Ler conteúdo do arquivo referenciado por $a0
		la $a1, conteudoArquivoExtratos # Buffer que armazena o conteúdo
		li $a2, 4000 # Informa o tamanho do buffer
		syscall # Leitura realizada
		
		la $a0, extratos0 # Carrega o endereco de extratos0 em $a0 (destination)
		la $a1, conteudoArquivoExtratos # Carrega o endereco de conteudoArquivoExtratos em $a1 (source)
		li $a2, 4000 # Numero de bytes a serem copiados para cliente0
		jal memcpy
		
		# Fechar o arquivo
		li $v0, 16
		move $a0, $t5 # Vai fechar o arquivo que tem descritor em $a0, descritor estava salvo em $t5
		syscall
        	
        	print_str(MEMORIA_CARREGADA_MSG)
        	
        	j fimFuncao	# Jump para fimFuncao, para voltar ao main_loop
        	
        formatar:
        	# $s0 = numClientes
        	li $t4, 0 # Contador do loop cliente
        	li $t5, 0 # Contador do loop extrato
        	la $t6, cliente0
        	la $t7, extratos0 # Carrega endereco de extratos0 em $a0
        	
        	loopApagaCliente:
		beq $t4, 3200, loopApagaExtrato
        	li $t8, '0' # Caractere nulo em $t8
        	sb $t8, 0($t6) # Armazena caractere nulo em $t7
        	addi $t6, $t6, 1 # Incrementa o endereco dos clientes
        	addi $t4, $t4, 1 # Incrementa o contador
        	j loopApagaCliente
        	
        	loopApagaExtrato:
        	beq $t5, 4000, fimFuncao
        	li $t8, '0' # Caractere nulo em $t8
        	sb $t8, 0($t7) # Armazena caractere nulo em $t7
        	addi $t7, $t7, 1 # Incrementa o endereco dos extratos
        	addi $t5, $t5, 1 # Incrementa o contador
        	j loopApagaExtrato
        	
	exit:
       		li $v0, 10        # Codigo do syscall para encerrar o programa
        	syscall
