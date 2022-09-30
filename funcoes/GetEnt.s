#################################################################################
# Polling do teclado: congela o jogo ate que o usuario aperte enter no KDMMIO 	#
#################################################################
#	n�o recebe registradores ax e nao retorna nada		#
#################################################################
GetEnt:	li	t0, '\n'
	li 	t1, 0xFF200000		# carrega o endere�o de controle do KDMMIO
LoopPoll:
	lw 	t2, 0(t1)		# Le bit de Controle Teclado
   	andi 	t2, t2, 0x0001
   	beqz 	t2, LoopPoll		# n�o tem tecla pressionada ent�o volta ao loop
   	lw 	t2, 4(t1)		# le o valor da tecla
   	bne	t2, t0, LoopPoll	# tecla =/= enter ? mais um loop : fim do poll
   	ret
#################################################################################
