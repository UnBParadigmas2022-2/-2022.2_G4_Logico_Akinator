:- initialization(testeBase).
% :- use_module(library(random)).

verifYes(X) :- (X = y; X = yes; X = s; X = sim).
verifyNo(X) :- (X = n; X = no; X = nao).

incrementa(Atual, Proximo) :- Proximo is Atual + 1.

carregaArquivos :- consult('src/database/clubes.pl'),
				   consult('src/database/paises.pl'),
				   consult('src/database/jogadores.pl'),
				   consult('src/database/perguntas.pl'),
				   
testeBase :-
	carregaArquivos,
	write('Pense em um jogador e aperte s quando estiver pronto'), 
	nl,
	read(Resposta),
	verifYes(Resposta), 
	menu(1, 1), 
	!.

menu(Nivel, NumeroPergunta):-
	pergunta(Nivel, NumeroPergunta, Pergunta),
	write(Pergunta), 
	nl,
	write('Resposta: '),
	read(Resposta),
	monitoraResposta(Nivel, NumeroPergunta, Resposta),
	!.

menu(Nivel, NumeroPergunta):-
	not(pergunta(Nivel, NumeroPergunta, Pergunta)),
	write('O jogador não existe na base de dados'),
	nl,
	nl.

monitoraResposta(Nivel, NumeroPergunta, Pergunta):-
	verifYes(Resposta),
	incrementa(Nivel, Nivel2),
	pergunta(Nivel2, NumeroPergunta, Pergunta),
	menuTerminal(Nivel, NumeroPergunta), 
	!. 

monitoraResposta(Nivel, NumeroPergunta, Pergunta):-
	verifyNo(Resposta),
	incrementa(NumeroPergunta, NumeroPergunta2),
	pergunta(Nivel, NumeroPergunta2, Pergunta),
	menuTerminal(Nivel, NumeroPergunta2), 
	!. 

monitoraResposta(Nivel, NumeroPergunta, Pergunta):-
	verifyNo(Resposta),
	incr(NumeroPergunta, NumeroPergunta2),
	not(pergunta(Nivel, NumeroPergunta2, Pergunta)),
	write('O seu jogador nao existe na base de dados!'),
	nl, 
	!. 	