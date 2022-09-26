Fase3:	
	addi	sp, sp, -4
	sw	ra, 0(sp)
	
	la	t0, musicTime	
	la	t1, noteCounter
	sw	zero, 0(t0)
	sw	zero, 0(t1)
	
	call	InicializaPersonagens
	
	la	t0, Fase
	li	t1, 3
	sb	t1, 0(t0)		# num fase = 3
	
	call	Dialogo3		# nao existe no momento	
			
	li	a5, 6			# a5 <- quantidade de personagens (aliados + inimigos)
	la	a0, tilemap_estrada
	call 	SetupMapa		# funcao no MapaMain	
	
	lw	ra, 0(sp)
	addi	sp, sp, 4
	ret		
