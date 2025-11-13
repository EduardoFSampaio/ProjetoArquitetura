
.data
msg_inicio: .asciiz "Iniciado. Digite algo:\n"

.globl main

.text

main:
    # Exibe mensagem inicial
    li $v0, 4
    la $a0, msg_inicio
    syscall

loop_principal:

    # Espera por caractere do teclado
    
    lw   $t0, 0xFFFF0000        # le Keyboard control
    andi $t0, $t0, 1            # isola o bit 0
    beqz $t0, loop_principal    # se bit=0 nao tem nada disponivel e espera

    lw   $t1, 0xFFFF0004        # le caractere do Keyboard data

  
espera_display:
    lw   $t2, 0xFFFF0008        # le Display control
    andi $t2, $t2, 1            # verifica bit de pronto
    beqz $t2, espera_display    # se nao estiver pronto ele espera


    # Envia caractere ao display
    sw   $t1, 0xFFFF000C        # escreve caractere no Display data

    j loop_principal            # volta e repete o processo