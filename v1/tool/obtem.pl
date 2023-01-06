:-style_check(-discontiguous).
:-style_check(-singleton).

obtemPergunta(Indicador, Topico, _) :-
	Indicador \= '',

	pergunta(Topico, Prefix, Sufix),
	write(Prefix), write(Indicador), write(Sufix), nl,
	write('Resposta: '), read(Resposta),

	!, monitoraResposta(Topico, Indicador, Resposta).

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'continente',
	selecao(Jogador, Selecao),
    pais(Indicador, Selecao),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'selecao',
	selecao(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'idade',
	idade(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'clube',
	clube(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'posicao',
	posicao(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'golsCopa',
	golsCopa(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.

obtemPergunta(_, Topico, Jogador) :-
    Topico == 'assistenciaCopa',
	assistenciaCopa(Jogador, Indicador),
	obtemPergunta(Indicador, Topico, _), !.