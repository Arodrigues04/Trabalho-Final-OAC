Fase5:	
	addi	sp, sp, -4
	sw	ra, 0(sp)
	
	la	t0, musicTime	
	la	t1, noteCounter
	sw	zero, 0(t0)
	sw	zero, 0(t1)
	
	call	InicializaPersonagens
	
	la	t0, Fase
	li	t1, 5
	sb	t1, 0(t0)		# num fase = 5
	
	#call	Dialogo5
				
	li	a5, 10			# a5 <- quantidade de personagens (aliados + inimigos)
	la	a0, tilemap_himalaia
	call 	SetupMapa		# funcao no MapaMain	
	
	lw	ra, 0(sp)
	addi	sp, sp, 4
	ret		
