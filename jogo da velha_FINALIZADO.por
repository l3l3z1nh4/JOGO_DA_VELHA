programa {
  funcao inicio() { 
      caracter jogador1 = '0', jogador2 = '0', posicao [9], mJogo[3][3], jogadorRodada
      cadeia ok
      inteiro ganhador = 0, rodada = 0
      
// tela inicial 
      jogoVelha ()

      escreva ("escolha quem vai começar: \n")
      escreva ("[X]\n[O]\n ")
      leia (jogador1)

      se ((jogador1 == 'x') ou (jogador1 == 'X')){
      	jogador1 = 'X'
      	jogador2 = 'O'
    	 }
    	 senao se ((jogador1 == 'o') ou (jogador1 == 'O') ou (jogador1 == '0')){
      	jogador1 = 'O'
      	jogador2 = 'X'
      }
    	 senao {
      	escreva ("---- opção inválida ----")
      }

//instruções 
 	 limpa ()
 	 jogoVelha()
  	 escreva ("Jogador 1: ", jogador1, "\n")
  	 escreva ("Jogador 2: ", jogador2, "\n\n")

  	 escreva ("POSIÇÕES NO TABULEIRO\n")
  	 Gabarito ()
	 escreva ("\n[ENTER PARA COMEÇAR]")
	 leia (ok)
	 limpa ()
	 jogoVelha()
	 
// aplicar valor 
	para (inteiro l = 0; l < 3; l ++){
			para (inteiro c = 0; c < 3; c ++){

				mJogo[l][c] = '-'
				escreva ("[ ", mJogo[l][c], " ]")
				}
				escreva ("\n")			
	}

// inicio jogo

		
	
	enquanto ((rodada < 9) e (ganhador == 0)) {
 			
		se (rodada%2 == 0) {
			jogadorRodada= jogador1
		}
		senao {
			jogadorRodada = jogador2
		}
	
		escreva ("\n", jogadorRodada, " escolha sua posição: ")
		leia (posicao[rodada])

//jogada 1
		se ((posicao[rodada] ==  '1')e(mJogo[0][0] == '-')) {
			mJogo[0][0] = jogadorRodada
			limpa()
			jogoVelha()
		}
 	 	senao se ((posicao[rodada] ==  '1')e(mJogo[0][0] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    		escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 2  
	  	se ((posicao[rodada] ==  '2')e(mJogo[0][1] == '-')){
	  		mJogo[0][1] = jogadorRodada
    			limpa()
    			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '2')e(mJogo[0][1] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 3
		se ((posicao[rodada] ==  '3')e(mJogo[0][2] == '-')){
	  		mJogo[0][2] = jogadorRodada
    			limpa()
    			jogoVelha()
			}
  		senao se ((posicao[rodada] ==  '3')e(mJogo[0][2] != '-')){
   			limpa()
   			jogoVelha()
   			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}
		
//jogada 4  
		se ((posicao[rodada] ==  '4')e(mJogo[1][0] == '-')){
	  		mJogo[1][0] = jogadorRodada
    			limpa()
    			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '4')e(mJogo[1][0] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
   			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 5  
		se ((posicao[rodada] ==  '5')e(mJogo[1][1] == '-')){
			mJogo[1][1] = jogadorRodada
  			limpa()
  			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '5')e(mJogo[1][1] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 6  
		se ((posicao[rodada] ==  '6')e(mJogo[1][2] == '-')){
			mJogo[1][2] = jogadorRodada
  			limpa()
  			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '6')e(mJogo[1][2] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

// jogada 7 
		se ((posicao[rodada] ==  '7')e(mJogo[2][0] == '-')){
			mJogo[2][0] = jogadorRodada
  			limpa()
  			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '7')e(mJogo[2][0] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 8  
		se ((posicao[rodada] ==  '8')e(mJogo[2][1] == '-')){
			mJogo[2][1] = jogadorRodada
  			limpa()
  			jogoVelha()
		}
  		senao se ((posicao[rodada] ==  '8')e(mJogo[2][1] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}

//jogada 9  
		se ((posicao[rodada] ==  '9')e(mJogo[2][2] == '-')){
			mJogo[2][2] = jogadorRodada
  			limpa()
  			jogoVelha()
		} 
  		senao se ((posicao[rodada] ==  '9')e(mJogo[2][2] != '-')){
    			limpa()
    			jogoVelha()
    			rodada = rodada - 1
    			escreva ("JOGADA INVÁLIDA\ntente novamente\n\n")
  		}
  		rodada = rodada + 1
  	
//escrever o jogo
		para (inteiro l2 = 0; l2 < 3; l2 ++){
			para (inteiro c2 = 0; c2 < 3; c2 ++){
				escreva ("[ ", mJogo[l2][c2], " ]")
				}
				escreva ("\n")	
		}

//TESTE VENCEDOR

		se (ganhador == 0){
//linhas
			para (inteiro cont = 0 ; cont < 3; cont++) {
				se ((mJogo[cont][0]==jogador1)e(mJogo[cont][1]==jogador1)e(mJogo[cont][2]==jogador1)){
					escreva ("\n",jogador1," É O VENCEDOR!\n")	
					ganhador  = 1
			}
				senao se ((mJogo[cont][0]==jogador2)e(mJogo[cont][1]==jogador2)e(mJogo[cont][2]==jogador2)){
					escreva ("\n",jogador2," É O VENCEDOR!\n")
					ganhador = 2
				}
			}

//colunas 
			para (inteiro cont2 = 0 ; cont2 < 3; cont2++) {
				se ((mJogo[0][cont2]==jogador1)e(mJogo[1][cont2]==jogador1)e(mJogo[2][cont2]==jogador1)){
					escreva ("\n",jogador1," É O VENCEDOR!\n")
					ganhador  = 1
				}
				senao se ((mJogo[0][cont2]==jogador2)e(mJogo[1][cont2]==jogador2)e(mJogo[2][cont2]==jogador2)){
					escreva ("\n",jogador2," É O VENCEDOR!\n")
					ganhador = 2
				}
			}

//diagonal 1
			se((mJogo[0][0]==jogador1)e(mJogo[1][1]==jogador1)e(mJogo[2][2]==jogador1)){
				escreva ("\n",jogador1," É O VENCEDOR!\n")
				ganhador = 1 	
			}
			senao se ((mJogo[0][0]==jogador2)e(mJogo[1][1]==jogador2)e(mJogo[2][2]==jogador2)){
				escreva ("\n",jogador2," É O VENCEDOR!\n")
				ganhador = 2 
			}

//diagonal 2
			se((mJogo[0][2]==jogador1)e(mJogo[1][1]==jogador1)e(mJogo[2][0]==jogador1)){
				escreva ("\n",jogador1," É O VENCEDOR!\n")
				ganhador = 1 	
			}
			senao se ((mJogo[0][2]==jogador2)e(mJogo[1][1]==jogador2)e(mJogo[2][0]==jogador2)){
				escreva ("\n",jogador2," É O VENCEDOR!\n")
				ganhador = 2 
			}
	
		}
		
		}

			se (ganhador == 0){
				escreva ("\n,OPS... DEU VELHA :(\n  tente novamente")
			}


	 

}

///////// funções
	funcao vazio jogoVelha (){
		escreva ("-----------------------------\n")
		escreva ("       JOGO DA VELHA\n ")
		escreva ("----------------------------\n")
	}

	funcao vazio Gabarito () {
		escreva ("[ 1 ][ 2 ][ 3 ]\n")
		escreva ("[ 4 ][ 5 ][ 6 ]\n")
		escreva ("[ 7 ][ 8 ][ 9 ]\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */