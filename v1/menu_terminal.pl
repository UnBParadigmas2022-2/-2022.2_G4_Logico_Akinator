:-style_check(-discontiguous).
:-style_check(-singleton).

:- use_module(library(lists)).
:- use_module(library(random)).

:- initialization(testeBase).

:- dynamic pais/2.
:- dynamic continente/1.
:- dynamic jogador/1.
:- dynamic pergunta/3.

verifYes(X) :- (X == y; X == yes; X == s; X == sim), !.
verifyNo(X) :- (X == n; X == no; X == nao), !.

incrementa(Atual, Proximo) :- Proximo is Atual + 1, !.

carregaTool :- 
	consult('v1/tool/atualiza.pl'),
	consult('v1/tool/limpa.pl'),
	consult('v1/tool/obtem.pl').

carregaArquivos :- 
	consult('v1/database/paises.pl'),
	consult('v1/database/clubes.pl'),
	consult('v1/database/jogadores.pl'),
	consult('v1/database/perguntas.pl').
				   
testeBase :-
	% Carrega os arquivos da base, randomiza o tipo de pergunta e o jogador, por fim chama o "menu"
	carregaArquivos,
	carregaTool, 

	write('Pense em um jogador e aperte s quando estiver pronto'), nl,
	read(Resposta),
	
	verifYes(Resposta),
	menu, !.

perdeuDemais(Numero) :- Numero == 0, write('Eita, não sei quem é'), nl, halt, !.
perdeuDemais(_) :- !.

ocorreuAlgo(Numero, _) :- Numero == 0, write('Eita, não sei quem é'), nl, halt, !.
ocorreuAlgo(Numero, [H|T]) :- Numero == 1, write('Venceu, seu jogador é o '), write(H), halt, !.
ocorreuAlgo(_, _) :- !.


veSeGanhou(Lista) :-
	length(Lista, Length),
	ocorreuAlgo(Length, Lista).

menu :-
	% Shuffle Jogador
	findall(Choice, jogador(Choice), ListaDeJogadores),
	veSeGanhou(ListaDeJogadores),
	random_member(Jogador, ListaDeJogadores),

	% Shuffle Topico
	findall(Choice, pergunta(Choice, _, _), ListaDeTopicos),
	length(ListaDeTopicos, LengthTopicos),
	perdeuDemais(LengthTopicos),
	random_member(Topico, ListaDeTopicos),

	obtemPergunta('', Topico, Jogador).

monitoraResposta(Topico, FatoDoJogador, Resposta) :-
	verifyNo(Resposta),
	
	limpa(Topico, FatoDoJogador),
	!, menu. 

monitoraResposta(Topico, FatoDoJogador, Resposta) :-
	verifYes(Resposta),
	
	retract(pergunta(Topico, _, _)),
	atualizaJogadores(Topico, FatoDoJogador),
	!, menu. 

monitoraResposta(Topico, FatoDoJogador, Resposta) :-
	Resposta == 'rei',
	
	write('O REI, Pelé'), nl, halt, !. 