:-style_check(-discontiguous).
:-style_check(-singleton).

:- use_module(library(lists)).

pegaTipoPergunta(Tipo) :-
	findall(Choice, pergunta(Choice, _, _), ListaDeTipos),
	Tipo is random_member(Tipo_Aleatorio, ListaDeTipos), !.

pegaPergunta(Tipo, Prefix, Sufix) :-
	% Recupera o prefixo de um determinado tipo de pergunta
	pergunta(Tipo, Prefix, Sufix), !.

% pergunta('continente', 'O seu jogador joga em algum time da ', '?').
pergunta('posicao', 'O seu jogador é ', '?').
pergunta('idade', 'O seu jogador tem ', ' anos?').
pergunta('golsCopa', 'O seu jogador fez ', ' gols na Copa?').
pergunta('clube', 'O seu jogador está jogando hoje no ', '?').
pergunta('selecao', 'O seu jogador é da seleção do país ', '?').
pergunta('assistenciaCopa', 'O seu jogador fez ', ' assistências na Copa?').