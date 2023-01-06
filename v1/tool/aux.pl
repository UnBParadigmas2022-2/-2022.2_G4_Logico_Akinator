:-style_check(-discontiguous).
:-style_check(-singleton).

verifYes(X) :- (X == y; X == yes; X == s; X == sim).
verifyNo(X) :- (X == n; X == no; X == nao).
verifySair(X) :- (X == exit; X == sair).

sairDoProjeto :- write('Adeus, Obrigado :D'), nl, halt, !.

querSair(X) :-
    verifySair(X),
    sairDoProjeto.
querSair(_) :- !.

preguntarTentarDnv :-
    write('Quer tentar novamente?'), nl,
    read(Resposta),
    querSair(Resposta),
    tentarDnv(Resposta), !.

perdeuDemais(Numero) :- Numero == 0, write('Eita, não sei quem é'), nl, nl, sairDoProjeto.
perdeuDemais(_) :- !.

ocorreuAlgo(Numero, _) :- Numero == 0, write('Eita, não sei quem é'), nl, nl, sairDoProjeto.
ocorreuAlgo(Numero, [H|T]) :- Numero == 1, write('Venceu, seu jogador é o '), write(H), nl, nl, sairDoProjeto.
ocorreuAlgo(_, _) :- !.

veSeGanhou(Lista) :-
	length(Lista, Length),
	ocorreuAlgo(Length, Lista).