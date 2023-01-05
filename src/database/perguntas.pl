:- use_module(library(lists)).

pegaTipoPergunta(Tipo) :-
	findall(Choice, pergunta(Choice, _, _), ListaDeTipos),
	Tipo is random_member(Tipo_Aleatorio, ListaDeTipos), !.

pegaPergunta(Tipo, Prefix, Sufix) :-
	% Recupera o prefixo de um determinado tipo de pergunta
	pergunta(Tipo, Prefix, Sufix), !.

pergunta('continente', 'O seu jogador joga em algum time da ', '?').

pergunta('selecao', 'O seu jogador é da seleção do país ', '?').