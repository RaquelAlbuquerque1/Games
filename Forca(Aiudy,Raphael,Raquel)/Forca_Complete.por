programa
{//bibliotecas utilizadas
	inclua biblioteca Calendario-->c
	inclua biblioteca Arquivos --> arq
     inclua biblioteca Texto --> txt
     inclua biblioteca Util --> ut
	
	funcao inicio()
	{
		
		inteiro refArq
		horas()
		nomesIntegrantes()
		refArq = arq.abrir_arquivo("jogo.txt",arq.MODO_LEITURA)
		lerSortearVerificar(refArq)
		
	}
	
	funcao loadingames(){//aparecer nome carregando jogo..
		
		escreva("C")
		ut.aguarde(200)
		escreva("a")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("e")
		ut.aguarde(200)
		escreva("g")
		ut.aguarde(200)
		escreva("a")
		ut.aguarde(200)
		escreva("n")
		ut.aguarde(200)
		escreva("d")
		ut.aguarde(200)
		escreva("o")
		ut.aguarde(200)
		escreva(" ")
		ut.aguarde(200)
		escreva("j")
		ut.aguarde(200)
		escreva("o")
		ut.aguarde(200)
		escreva("g")
		ut.aguarde(200)
		escreva("o")
		ut.aguarde(200)
		escreva("...")
		ut.aguarde(700)
		limpa()
	}
	
	funcao loadingrules(){//aparecer carregando regras....
		
		escreva("C")
		ut.aguarde(200)
		escreva("a")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("e")
		ut.aguarde(200)
		escreva("g")
		ut.aguarde(200)
		escreva("a")
		ut.aguarde(200)
		escreva("n")
		ut.aguarde(200)
		escreva("d")
		ut.aguarde(200)
		escreva("o")
		ut.aguarde(200)
		escreva(" ")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("e")
		ut.aguarde(200)
		escreva("g")
		ut.aguarde(200)
		escreva("r")
		ut.aguarde(200)
		escreva("a")
		ut.aguarde(200)
		escreva("s")
		ut.aguarde(200)
		escreva("...")
		ut.aguarde(700)
		limpa()
		regras()
	}
	
	funcao regras(){//mostrar ás regras ao participante
		
		escreva("█████████\n")
		escreva("█▄█████▄█\n")
		escreva("█▼▼▼▼▼\n")
		escreva("█ REGRAS!\n")
		escreva("█ 1-A primeira letra da Palavra deverá ser Maíuscula,Cuidado pois será contabilizado como um erro!!\n")
		escreva("█ 2-As palavras estão sem Acentos Ex: Avião = Aviao\n")
		escreva("█ 3-Você tem Apenas 6 Vidas!!\n")
		escreva("█ 4-Para pedir Dica digite o Número 1!!\n")
		escreva("█ 5-Você tem apenas 5 minutos Para Finalizar o jogo!!\n")
		escreva("█ Bom jogo e fique esperto nas dicas e regras,o jogo se iniciará em instantes!!\n")
		escreva("█▲▲▲▲▲\n")
		escreva("█████████\n")
		escreva("██ ██\n")
		ut.aguarde(10000)//esperar 
		limpa()
		loadingames()
		}
		
	funcao horas()//Irá mostrar as horas e o dia 
	
	{
		inteiro dia= c.dia_mes_atual()
		inteiro mes=c.mes_atual()
		inteiro ano=c.ano_atual()
		inteiro min=c.minuto_atual()
		inteiro hora=c.hora_atual(falso)
		//datas
		se(dia<= 9 e mes<=9 )//Quando meu dia e mes for menor que 9 ele adiciona o zero
		{
			escreva("\n           Data: ", "0", dia, "/",  "0",mes, "/",ano)
		}
		senao se(mes<=9)//Quando o mes for menor que 9 adiciona o 0 ao lado
		{
			escreva("\n           Data: ",  dia, "/", "0", mes, "/",ano)
		}
		senao se(dia<=9 e mes>=10)//Quando forem divergentes
		{
			escreva("\n           Data: ", "0", dia, "/", mes, "/",ano)
		}
		senao//Quando os dois forem maiores
		{
			escreva("\n           Data: ", dia, "/", mes, "/", ano)
		}
		//Horas
		se(hora<= 9 e min<=9 )//Quando minha hora e minuto for menor que 9 ele adiciona o zero
		{
			escreva("\t           Hora: ", "0", hora, ":","0",min,"\n")
		}
		senao se(min<=9)//Quando o minuto for menor que 9 adiciona o 0 ao lado
		{
			escreva("\t          Hora: ",  hora, ":", "0",min,"\n")
		}
		senao se(hora<=9 e min>=10)//Quando forem divergentes
		{
			escreva("\t          Hora: ", "0", hora, ":", min)
		}
		senao//Quando os dois forem maiores
		{
			escreva("\t            Hora: ", hora, ":", min,"\n")
		}
	}
	
	funcao nomesIntegrantes(){//função pra exibir os integrantes
		

		escreva("           |*--------------------------INTEGRANTES DO GRUPO--------------------------*|\n")
		escreva("           |*    Nome: Aiudy Camila Costa                    RA:1680482111014        *|\n")
		escreva("           |*    Nome: Raphael Gonçalves De Souza Dias       RA:1680482111021        *|\n")
		escreva("           |*    Nome: Raquel Albuquerque dos Santos Silva   RA:1680482111020        *|\n")
		escreva("           |*------------------------------------------------------------------------*|\n")
		escreva("           |*    Jogo   [ x ]         Dicas    [ x ]     Controle de Tempo[ x ]      *|\n")
		escreva("           |*------------------------------------------------------------------------*|\n")
		ut.aguarde(10000)
		limpa()	
		loadingrules()
	}
	
	funcao lerSortearVerificar(inteiro refArq){ //funçao do jogo para ler,sortear e verificar

		cadeia matriz_content [100] [10],ler_linha, palavra
		inteiro total,linha,coluna,dica,fazendoSorteio,posicao, tamanho,dicas, acertos, erros,tempo
		caracter formacao_palavra[100],letras[20],tamanho_palavra,letraPalavra
		logico letraCerta, letraRepetida
		
		linha = 0
		coluna = 0
		ler_linha = arq.ler_linha(refArq)
		dicas = 1
		tempo = ut.tempo_decorrido()
		
		
		faca{
					
			se(txt.obter_caracter(ler_linha, 0) == 'P'){  //Quando o meu carcater do arquivo for igual a p
				total = txt.numero_caracteres(ler_linha)//ver os numero de caracteeres
				matriz_content[linha][coluna] = txt.extrair_subtexto(ler_linha, 2, total)
				coluna++
				ler_linha = arq.ler_linha(refArq)
					
				enquanto(txt.obter_caracter(ler_linha, 0) != 'P'){//quando for diferente de p ele irá fazer
					total = txt.numero_caracteres(ler_linha)
					matriz_content[linha][coluna] = txt.extrair_subtexto(ler_linha, 2, total)
					ler_linha = arq.ler_linha(refArq)
					coluna++	
						    
						se(txt.numero_caracteres(ler_linha) == 0){
							 pare
						}		
					}
					linha++
					coluna = 0
			}
		}enquanto(nao arq.fim_arquivo(refArq))

		fazendoSorteio = ut.sorteia(0, linha -1)//sorteia 
		palavra = matriz_content[fazendoSorteio] [0]//sorteia uma palavra da minha linha
		tamanho = txt.numero_caracteres(palavra)//pega um caracter da palavra sorteada

		//escreva("           ")
		escreva("\nDica:")
		escreva(matriz_content[fazendoSorteio][dicas], "\n             \n")

		acertos = tamanho //Os acertos tem que ser igual tamanho
		erros = 6//limite de erros que é 6
			
		para( posicao = 0; posicao < tamanho; posicao++){
			tamanho_palavra = txt.obter_caracter(palavra, posicao)
			letras[posicao]= tamanho_palavra		
		 	formacao_palavra[posicao]  = '_'	
		}

		enquanto(acertos > 0 e erros > 0){
				
				se(ut.tempo_decorrido() > tempo+180000){
					limpa()
					escreva("Que pena, seu tempo acabou!!!")
					pare
				} senao{
					 boneco(erros)
					 escreva(" \n           Suas chances:" , erros, "\n           Digite uma letra: ")
				}
	
				
				para( posicao=0;posicao<tamanho;posicao++){
				 	escreva(formacao_palavra[posicao]," ")
				}
				
				escreva("\n")
				leia(letraPalavra)
				
				letraCerta = falso
				letraRepetida = falso
				 
				para( posicao = 0; posicao < tamanho; posicao++){
				 		se(letraPalavra == letras[posicao]){
				 			se(formacao_palavra[posicao] == letraPalavra){
				 				letraRepetida = verdadeiro
				 			}senao
				 				letraCerta = verdadeiro
				 				formacao_palavra[posicao] = letraPalavra
				 				acertos--	
				 		}
				}
				 
				 se(letraRepetida == verdadeiro){
				 	escreva("\n           Esta letra já foi digitada!!!")
				 	acertos++
				 }senao {
				 	limpa()
					 	se(letraCerta == verdadeiro){
					 		escreva("\n           Você acertou!!!")
					 		escreva("\n")
					 		escreva("\n           ",matriz_content[fazendoSorteio][dicas],"\n")
					 	}senao
						 	se(letraPalavra == '1'){
						 		dicas++
						 		escreva("\n           ",matriz_content[fazendoSorteio][dicas],"\n\n")
						 		erros--
						 			
						 	}senao{
						 		erros--
						 		escreva("\n           Você errou!!!")
						 		escreva("\n")
						 		escreva("\n           ",matriz_content[fazendoSorteio][dicas],"\n")
					 		}
				 		}

			}

		se(acertos == 0){ //quando a minha quantidade de acertos for 0 ele irá dizer que ganhou
			 limpa()
			 escreva("\n Parabéns você ganhou!!!, a palavra realmente era: ") 
			 
				 para( posicao = 0; posicao < tamanho; posicao++){
				 		escreva(formacao_palavra[posicao])
				 		
				 }
				  //quando a minha quantidade de acertos for 0 ele irá dizer que ganhou
			escreva("\n")
			boneco(erros)
			jogar_novamenteGanhou() //iniciar o jogo novamente
		 }

		se (erros == 0){ //quando a minha quantidade de erros for 0 ele irá dizer que perdeu
			limpa()
			boneco(erros = 0)
			escreva("\n Que pena,você perdeu!!! A palavra era: ")
			
				 	para( posicao = 0; posicao < tamanho; posicao++){
				 		escreva(letras[posicao])	
				 		
				 	}	
				 escreva("\n")
				 boneco(erros)
				 jogar_novamentePerdeu()
		}
			
	}

	funcao boneco(inteiro erros) { //boneco de erros

		escolha(erros){ // quando ele errar irá aparecer esses caso conforme ás jogadas dele
			caso 6:
				 escreva("\n           Digite 1 para Dica\n\n")
			 	 escreva("           ♥ ♥ ♥ ♥ ♥ ♥   +---+\n")
			 	 escreva("                         |   |\n")
			 	 escreva("                             |\n")
			 	 escreva("                             |\n")
			 	 escreva("                             |\n")
			 	 escreva("                             |\n")
			 	 escreva("                     ========   ")
			 	 pare
			caso 5:
				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♥ ♥ ♥ ♥ ♥ ♡   +---+\n")
				 escreva("                         |   |\n")
				 escreva("                         0   |\n")
				 escreva("                             |\n")
				 escreva("                             |\n")
				 escreva("                             |\n")
				 escreva("                    =========   ")
			   	 pare
			caso 4:
 				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♥ ♥ ♥ ♥ ♡ ♡   +---+\n")
				 escreva("                         |   |\n")
				 escreva("                         0   |\n")
				 escreva("                         |   |\n")
				 escreva("                             |\n")
				 escreva("                             |\n")
				 escreva("                    =========   ")
				 pare
			caso 3:
				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♥ ♥ ♥ ♡ ♡ ♡    +---+\n")
				 escreva("                          |   |\n")
				 escreva("                          0   |\n")
				 escreva("                         /|   |\n")
				 escreva("                          |   |\n")
				 escreva("                          |   |\n")
				 escreva("                     =========   ")
				 pare
			caso 2:
				
				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♥ ♥ ♡ ♡ ♡ ♡    +---+\n")
				 escreva("                          |   |\n")
				 escreva("                          0   |\n")
				 escreva("                         /|\\  |\n")
				 escreva("                          |   |\n")
				 escreva("                          |   |\n")
				 escreva("                     =========   ")
				 pare
			caso 1:
				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♥ ♡ ♡ ♡ ♡ ♡    +---+\n")
				 escreva("                          |   |\n")
				 escreva("                          0   |\n")
				 escreva("                         /|\\  |\n")
				 escreva("                         /    |\n")
				 escreva("                              |\n")
				 escreva("                         ======  ")
				 pare
			caso 0: 
				
				 escreva("\n           Digite 1 para Dica\n\n")
				 escreva("           ♡ ♡ ♡ ♡ ♡ ♡    +---+\n")
				 escreva("                          |   |\n")
				 escreva("                          0   |\n")
				 escreva("                         /|\\  |\n")
				 escreva("                         / \\  |\n")
				 escreva("                              |\n")
				 escreva("                         =====   ")
				 pare

			}
		}

	funcao jogar_novamenteGanhou(){ //funçao para perguntar se ele vai jogar dnv ão ganhar

		caracter jogar
		

		escreva("\nEstá foi fácil demais, te desafiamos a jogar novamente\n")
		escreva("E aí, topa o desafio?\n")
		escreva("Se sim digite 's' e parte pra cima, senão digite 'n':")
		leia(jogar)    

		se ( jogar == 's' ){ //se o jogador digita s ele voltará para o jogo inicio() que é a função
			limpa()
			inicio()
		}
	}

	funcao jogar_novamentePerdeu(){//funçao para perguntar se ele vai jogar dnv ão perder

		caracter jogar

		escreva("\nQue pena,não foi dessa vez!!! Mas você pode tentar de novo.\n")
		escreva("E aí, topa o desafio?\n")
		escreva("Se sim digite 's' e parte pra cima, senão digite 'n':")
		leia(jogar)

		se ( jogar == 's'){
			limpa()
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11375; 
 * @DOBRAMENTO-CODIGO = [7, 18, 55, 97, 117, 161, 242, 397, 413];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */