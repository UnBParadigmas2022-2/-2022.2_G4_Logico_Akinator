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

continente(africa).
continente(america).
continente(asia).
continente(europa).
continente(oceania).

limpa(Topico, FatoDoJogador) :-
	Topico == 'selecao',
	retract(pais(_, FatoDoJogador)),
	findall(Choice, jogador(Choice, FatoDoJogador, _, _, _, _, _), ListaDeJogadores),
	limpaJogadores(ListaDeJogadores), !.

pais(africa, camaroes).
pais(africa, gana).
pais(africa, marrocos).
pais(africa, senegal).
pais(africa, tunisia).

pais(america, argentina).
pais(america, brasil).
pais(america, canada).
pais(america, costaRica).
pais(america, equador).
pais(america, estadosUnidos).
pais(america, mexico).
pais(america, uruguai).

pais(asia, arabia).
pais(asia, catar).
pais(asia, coreiaDoSul).
pais(asia, ira).
pais(asia, japao)

pais(europa, alemanha).
pais(europa, belgica).
pais(europa, croacia).
pais(europa, dinamarca).
pais(europa, espanha).
pais(europa, franca).
pais(europa, holanda).
pais(europa, inglaterra).
pais(europa, italia).
pais(europa, paisDeGales).
pais(europa, polonia).
pais(europa, portugal).
pais(europa, servia).
pais(europa, suica).
pais(europa, turquia).

pais(oceania, australia).