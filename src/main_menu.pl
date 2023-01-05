:- initialization(menu).
:- use_module(library(pce_style_item)).
:- use_module(library(pce)).

menu:-  repeat,
	% criacao da janela
  new(D, dialog('Akinator Copa 2022')),
  send(D, size, size(1000, 600)),
	new(T, text('Bem vindo ao Akinator da Copa do mundo de 2022')),
  new(F, font(screen, roman, 20)),
	send(T, font(F)),
  send(D, display, T, point(50, 20)),
	new(P, text('Foi criada uma base de dados contendo com 11 titulares das seguintes selecoes: ')),
  new(F1, font(screen, roman, 14)),
	send(P, font(F1)),
  send(D, display, P, point(50, 100)),
  new(Hol, text('- Holanda')),
	send(Hol, font(F1)),
  send(D, display, Hol, point(100, 150)),
  new(Ing, text('- Inglaterra ')),
  send(Ing, font(F1)),
  send(D, display, Ing, point(100, 180)),
  new(Arg, text('- Argentina')),
  send(Arg, font(F1)),
  send(D, display, Arg, point(100, 210)),
  new(Fra, text('- Franca')),
  send(Fra, font(F1)),
  send(D, display, Fra, point(100, 240)),
  new(Esp, text('- Espanha')),
  send(Esp, font(F1)),
  send(D, display, Esp, point(100, 270)),
  new(Bel, text('- Belgica')),
  send(Bel, font(F1)),
  send(D, display, Bel, point(100, 300)),
  new(Bra, text('- Brasil')),
  send(Bra, font(F1)),
  send(D, display, Bra, point(100, 330)),
  new(Por, text('- Portugal')),
  send(Por, font(F1)),
  send(D, display, Por, point(100, 360)),
	new(B1, button('Comecar', message(@prolog, option, 1))),
	new(B2, button('Sair', message(D, destroy))),
  send(D, display, B1, point(300, 500)),
  send(D, display, B2, point(600, 500)),
  	send(D, open),
	!.

option(0):- !.
option(1):-
    consult(akinator_menu), !.