:- use_module(library(pce)).
:- initialization(menuAkinator).
:- use_module(library(random)).

incr(X, X1):-
    X1 is X+1.

carregaArquivos :- consult('src/database/clubes.pl'),
				   consult('src/database/paises.pl'),
				   consult('src/database/jogadores.pl'),
				   consult('src/database/perguntas.pl'),

menuAkinator :-
		carregaArquivos
		new(D, dialog('Minha primeira janela')),
		send(D, size, size(800, 500)),
		send(D, open),
		pergunta(1,1,Pergunta),
		fazPergunta(D, Pergunta), !.

%% Fatos

%% Pergunta - nivel da pergunta, numero da pergunta na lista, pergunta


% fazPergunta(D, PerguntaAtual):-
% 	send(D, clear),
% 	new(T, text(PerguntaAtual)),
% 	new(F, font(screen, roman, 20)),
% 	send(T, font(F)),
%   send(D, display, T, point(50, 20)),
% 	new(B1, button('Sim', message(@prolog, proxPergunta, PerguntaAtual, 1))),
% 	new(B2, button('Nao', message(@prolog, proxPergunta, PerguntaAtual, 2))),
%   send(D, display, B1, point(250, 400)),
%   send(D, display, B2, point(500, 400)).
