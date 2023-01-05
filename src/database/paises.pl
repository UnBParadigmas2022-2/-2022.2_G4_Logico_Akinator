%% Fatos

%% continente(continente)
%% pais(continente, pais)

%% Distribuicao de selecoes por continente
limparPaises([H|T]) :-
	retract(pais(_, H)),
	limparPaises(T), !.
limparPaises([]) :- !.

limpa(Topico, FatoDoJogador) :-
	Topico == 'continente',
    write(Topico),
    write(FatoDoJogador),
	findall(Pais, pais(FatoDoJogador, Pais), ListaDePais),
    retract(continente(FatoDoJogador)),
	limparPaises(ListaDePais), !.

continente(europa).
continente(america).
continente(asia).

limpa(Topico, FatoDoJogador) :-
	Topico == 'selecao',
	retract(pais(_, FatoDoJogador)),
	findall(Choice, jogador(Choice, FatoDoJogador, _, _, _, _, _), ListaDeJogadores),
	limpaJogadores(ListaDeJogadores), !.

pais(europa, holanda).
pais(europa, inglaterra).
pais(europa, franca).
pais(europa, espanha).
pais(europa, belgica).
pais(europa, portugal).
pais(europa, alemanha).
pais(europa, italia).
pais(europa, turquia).

pais(america, brasil).
pais(america, argentina).

pais(asia, arabia).