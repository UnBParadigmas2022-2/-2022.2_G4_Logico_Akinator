:- use_module(library(lists)).

pegaTipoPergunta(Tipo) :-
	findall(Choice, pergunta(Choice, _, _), ListaDeTipos),
	Tipo is random_member(Tipo_Aleatorio, ListaDeTipos).

pegaPergunta(Tipo, Prefix, Sufix) :-
	findall(Choice, pergunta(Tipo, Choice, _), Pre),
	nth0(0, Pre, Prefix),
	findall(Choice, pergunta(Tipo, _, Choice), Su),
	nth0(0, Su, Sufix).

pergunta('continente', 'O seu jogador joga em algum time da ', '?').

pergunta('selecao', 'O seu jogador é da seleção do país ', '?').