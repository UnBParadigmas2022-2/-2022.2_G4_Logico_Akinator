:- module(bc_remove_perguntas, [
    exclui_perguntas_assist/0,
    exclui_perguntas_gol/0,
    exclui_perguntas_idade/0,
    exclui_perguntas_clube/0,
    exclui_perguntas_posicao/0,
    exclui_perguntas_selecao/0   
]).
:- use_module([define_jogadores]).
:- use_module([define_perguntas]).

%% Jogador(Nome, Seleção, Posição, Clube, Idade, Gols na Copa, Assistências na Copa).
exclui_perguntas_assist:-
    findall(Assist, jogador(_, _, _, _, _, _, Assist), Assist),
    exclui_perguntas_da_lista(Assistencias), !.

exclui_perguntas_gol:-
    findall(Gol, jogador(_, _, _, _, _, Gol, _), Gols),
    exclui_perguntas_da_lista(Gols), !.

exclui_perguntas_idade:-
    findall(Idade, jogador(_, _, _, _, Idade, _, _), Idades),
    exclui_perguntas_da_lista(Idades), !.

exclui_perguntas_clube:-
    findall(Clube, jogador(_, _, _, Clube, _, _, _), Clubes),
    exclui_perguntas_da_lista(Clubes), !.

exclui_perguntas_posicao:-
    findall(Posicao, jogador(_, _, Posicao, _, _, _, _), Posicoes),
    exclui_perguntas_da_lista(Posicoes), !.

exclui_perguntas_selecao:-
    findall(Selecao, jogador(_, Selecao, _, _, _, _, _), Selecoes),
    exclui_perguntas_da_lista(Selecoes), !.


exclui_perguntas_da_lista([H|T]) :- limpa_perguntas(H), exclui_perguntas_da_lista(T).
exclui_perguntas_da_lista([]) :- !.

limpa_perguntas(X) :- remove_pergunta(X), fail.
limpa_perguntas(X).

remove_pergunta(X) :- retract(pergunta(_, X)).
remove_pergunta(X).