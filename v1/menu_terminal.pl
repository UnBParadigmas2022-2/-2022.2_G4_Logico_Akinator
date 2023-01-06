:-style_check(-discontiguous).
:-style_check(-singleton).

:- use_module(library(lists)).
:- use_module(library(random)).

:- initialization(base).

:- dynamic pais/2.
:- dynamic continente/1.
:- dynamic jogador/1.
:- dynamic pergunta/3.


carregaTool :- 
	consult('v1/tool/atualiza.pl'),
	consult('v1/tool/limpa.pl'),
	consult('v1/tool/obtem.pl'),
	consult('v1/tool/aux.pl').

carregaArquivos :- 
	consult('v1/database/paises.pl'),
	consult('v1/database/clubes.pl'),
	consult('v1/database/jogadores.pl'),
	consult('v1/database/perguntas.pl').

printa_header:-
	write("*---------------------------------------------------*"), nl,
	write("|                                    .              |"), nl,
	write("|      ,-. ,-. ,-. ,-. . , . ,-. ,-. |- ,-. ,-.     |"), nl,
	write("|      |   | | | | ,-| |/  | | | ,-| |  | | |       |"), nl,
	write("|      `-' `-' |-' `-^ |\\  ' ' ' `-^ `' `-' '       |"), nl,
	write("|              |       ' `                          |"), nl,
	write("|              '                                    |"), nl,
	write("*---------------------------------------------------*"), nl, nl.
				   
base :-
	% Carrega os arquivos da base, randomiza o tipo de pergunta e o jogador, por fim chama o "menu"
	carregaArquivos,
	carregaTool, 

	printa_header,

	write('(Para sair a qualquer momento escreva "sair" ou "exit")'), nl,
	write('Pense em um jogador e aperte s quando estiver pronto'), nl,
	read(Resposta),
	querSair(Resposta),

	verifYes(Resposta),
	menu, !.

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