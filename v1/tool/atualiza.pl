:-style_check(-discontiguous).
:-style_check(-singleton).

:- use_module(library(lists)).

removeJogadores(ListaDeJogadores) :-
	findall(Choice, jogador(Choice), TodosJogadores),
	intersection(ListaDeJogadores, TodosJogadores, R),
	limpaTodosJogadores(X),
	registraJogadores(R).

atualizaPaises([H|T]) :-
	atualizaJogadores('selecao', T).
atualizaPaises([]) :- !.

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'continente',
	findall(Choice, pais(FatoDoJogador, Choice), ListaDePaises),
	!, atualizaPaises(ListaDePaises).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'selecao',
	findall(Choice, selecao(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'idade',
	findall(Choice, idade(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'clube',
	findall(Choice, clube(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'posicao',
	findall(Choice, posicao(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'golsCopa',
	findall(Choice, golsCopa(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).

atualizaJogadores(Topico, FatoDoJogador) :-
    Topico == 'assistenciaCopa',
	findall(Choice, assistenciaCopa(Choice, FatoDoJogador), ListaDeJogadores),
	!, removeJogadores(ListaDeJogadores).
