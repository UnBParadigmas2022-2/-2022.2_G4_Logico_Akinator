deleteJogadores(ListaDeJogadores) :-
	findall(Choice, jogador(Choice), TodosJogadores),
	intersection(ListaDeJogadores, TodosJogadores, R),
	limpaJogadores(R).

limparPaises([H|T]) :-
    limpa('selecao', H),
	limparPaises(T), !.
limparPaises([]) :- !.

limpa(Topico, FatoDoJogador) :-
    Topico == 'continente',
    findall(Pais, pais(FatoDoJogador, Pais), ListaDePais),
    retract(continente(FatoDoJogador)),
    !, limparPaises(ListaDePais).

limpa(Topico, FatoDoJogador) :-
	Topico == 'selecao',
	findall(Choice, selecao(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).

limpa(Topico, FatoDoJogador) :-
	Topico == 'idade',
	findall(Choice, idade(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).

limpa(Topico, FatoDoJogador) :-
	Topico == 'clube',
	findall(Choice, clube(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).

limpa(Topico, FatoDoJogador) :-
	Topico == 'posicao',
	findall(Choice, posicao(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).

limpa(Topico, FatoDoJogador) :-
	Topico == 'golsCopa',
	findall(Choice, golsCopa(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).

% buga
limpa(Topico, FatoDoJogador) :-
    Topico == 'assistenciaCopa',
	findall(Choice, assistenciaCopa(Choice, FatoDoJogador), ListaDeJogadores),
	!, deleteJogadores(ListaDeJogadores).
