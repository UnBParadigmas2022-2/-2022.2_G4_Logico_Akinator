:- initialization(testeBase).
:- use_module(library(lists)).
:- use_module(library(random)).

verifYes(X) :- (X = y; X = yes; X = s; X = sim).
verifyNo(X) :- (X = n; X = no; X = nao).

incrementa(Atual, Proximo) :- Proximo is Atual + 1.

carregaArquivos :- 
	consult('src/database/clubes.pl'),
	consult('src/database/paises.pl'),
	consult('src/database/jogadores.pl'),
	consult('src/database/perguntas.pl').

pegaJogadoTipoPergunta(TipoDaPergunta, Jogador, Indicacao) :-
    TipoDaPergunta = 'continente',
	jogador(Jogador, Selecao, _, _, _, _, _),
    pais(Indicacao, Selecao).

pegaJogadoTipoPergunta(TipoDaPergunta, Jogador, Indicacao) :-
    TipoDaPergunta = 'selecao',
	jogador(Jogador, Indicacao, _, _, _, _, _).

shuffleTipo(TipoDaPergunta) :-
	findall(Choice, pergunta(Choice, _, _), ListaDeTipos),
	random_member(TipoDaPergunta, ListaDeTipos).

shuffleJogador(Jogador) :-
	findall(Choice, jogador(Choice, _, _, _, _, _, _), ListaDeJogadores),
	random_member(Jogador, ListaDeJogadores).
				   
testeBase :-
	carregaArquivos,
	shuffleTipo(TipoDaPergunta),
	write(TipoDaPergunta),
    shuffleJogador(Jogador),
	pegaJogadoTipoPergunta(TipoDaPergunta, Jogador, Indicacao),
	pegaPergunta(TipoDaPergunta, Prefix, Sufix),
	write(Prefix),
	write(Indicacao),
	write(Sufix),
	% write('Pense em um jogador e aperte s quando estiver pronto'), 
	% nl,
	% read(Resposta),
	% verifYes(Resposta), 
	% menu(1, 1), 
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

monitoraResposta(Nivel, NumeroPergunta, Resposta):-
	verifYes(Resposta),
	incrementa(Nivel, Nivel2),
	pergunta(Nivel2, NumeroPergunta, Pergunta),
	menu(Nivel, NumeroPergunta), 
	!. 

monitoraResposta(Nivel, NumeroPergunta, Resposta):-
	verifyNo(Resposta),
	incrementa(NumeroPergunta, NumeroPergunta2),
	pergunta(Nivel, NumeroPergunta2, Pergunta),
	menu(Nivel, NumeroPergunta2), 
	!. 

monitoraResposta(Nivel, NumeroPergunta, Resposta):-
	verifyNo(Resposta),
	incrementa(NumeroPergunta, NumeroPergunta2),
	not(pergunta(Nivel, NumeroPergunta2, Pergunta)),
	write('O seu jogador nao existe na base de dados!'),
	nl, 
	!. 	