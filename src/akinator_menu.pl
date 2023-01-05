:- use_module(library(pce)).
:- initialization(menu_akinator).
:- use_module(library(random)).

menu_akinator :-
		new(D, dialog('Minha primeira janela')),
		send(D, size, size(800, 500)),
		send(D, open),
		pergunta(1,1,Pergunta),
		fazPergunta(D, Pergunta), !.

%% Fatos

%% Pergunta - nivel da pergunta, numero da pergunta na lista, pergunta

pergunta(1, 1, 'O seu jogador eh americano?').
pergunta(1, 2, 'O seu jogador eh europeu?').

pergunta(2, 1, 'O seu jogador joga em algum time da europa?').
pergunta(2, 1, 'O seu jogador joga em algum time da asia?').

pergunta(3, 2, 'O seu jogador joga em algum time da espanha?').
pergunta(3, 3, 'O seu jogador joga em algum time da italia?').
pergunta(3, 4, 'O seu jogador joga em algum time da inglaterra?').
pergunta(3, 5, 'O seu jogador joga em algum time da frança?').
pergunta(3, 6, 'O seu jogador joga em algum time da alemanha?').
pergunta(3, 7, 'O seu jogador joga em algum time da holanda?').
pergunta(3, 8, 'O seu jogador joga em algum time da portugal?').
pergunta(3, 9, 'O seu jogador joga em algum time da belgica?').
pergunta(3, 10, 'O seu jogador joga em algum time da turquia?').
pergunta(3, 11, 'O seu jogador joga em algum time da arabia?').

fazPergunta(D, PerguntaAtual):-
	send(D, clear),
	new(T, text(PerguntaAtual)),
	new(F, font(screen, roman, 20)),
	send(T, font(F)),
  send(D, display, T, point(50, 20)),
	new(B1, button('Sim', message(@prolog, proxPergunta, PerguntaAtual, 1))),
	new(B2, button('Nao', message(@prolog, proxPergunta, PerguntaAtual, 2))),
  send(D, display, B1, point(250, 400)),
  send(D, display, B2, point(500, 400)).

proxPergunta(PerguntaAtual, Resposta):-
