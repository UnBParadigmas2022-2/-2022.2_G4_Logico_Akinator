:- use_module(library(pce)).
:- initialization(testeBase).
:- use_module(library(random)).

incr(X, X1):-
    X1 is X+1.

testeBase:-
	consult('database/clubes.pl'),
	consult('database/paises.pl'),
	consult('database/jogadores.pl'),
	write('Pense em um jogador e aperte s quando estiver pronto'), nl,
	read(Resp),
	Resp = s , menuTerminal(1, 1), !.

menuTerminal(X, Y):-
	pergunta(X,Y,Pergunta),
	write(Pergunta),nl,
	write('Digite s ou n'),
	read(Resp),
	monitoraResposta(X,Y,Resp), !.

menuTerminal(X,Y):-
	not(pergunta(X,Y,Pergunta)),
	write('O jogador não existe na base de dados'),nl,nl.

monitoraResposta(X, Y, Resp):-
	Resp = s,
	incr(X, X2),
	pergunta(X, Y2, Pergunta),
	menuTerminal(X, Y2), !. 

monitoraResposta(X, Y, Resp):-
	Resp = n,
	incr(Y, Y2),
	pergunta(X, Y2, Pergunta),
	menuTerminal(X, Y2), !. 

monitoraResposta(X, Y, Resp):-
	Resp = n,
	incr(Y, Y2),
	not(pergunta(X, Y2, Pergunta)),
	write('O seu jogador nao existe na base de dados!'),nl, !. 	