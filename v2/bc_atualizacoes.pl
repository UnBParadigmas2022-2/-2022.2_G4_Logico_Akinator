:- module(bc_atualizacoes, [
    atualizar_selecao/2,
    atualizar_posicao/2,
    atualizar_time/2,
    atualizar_idade/2,
    atualizar_gols/2,
    atualizar_gols/2,
    atualizar_assists/2]).
:- use_module([bc_manipulacoes]).
:- use_module([define_jogadores]).
:- use_module([bc_remove_perguntas]).


% --- Atualizar Selecao --- %
atualizar_selecao(s, Selecao):- 
    findall(Jogador, jogador(Jogador, Selecao, _, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_selecao.
atualizar_selecao(n, Selecao):- 
    findall(Jogador, jogador(Jogador, Selecao, _, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Posição --- %
atualizar_posicao(s, Posicao):-
    findall(Jogador, jogador(Jogador, _, Posicao, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_posicao.
atualizar_posicao(n, Posicao):- 
    findall(Jogador, jogador(Jogador, _, Posicao, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Time ------ %
atualizar_time(s, Time):-
    findall(Jogador, jogador(Jogador, _, _, Time, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_clube.
atualizar_time(n, Time):-
    findall(Jogador, jogador(Jogador, _, _, Time, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Idade ----- %
atualizar_idade(s, Idade):-
    findall(Jogador, jogador(Jogador, _, _, _, Idade, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_idade.
atualizar_idade(n, Idade):-
    findall(Jogador, jogador(Jogador, _, _, _, Idade, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Gols ------ %
atualizar_gols(s, Gols):-
    findall(Jogador, jogador(Jogador, _, _, _, _, Gols, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_gol.
atualizar_gols(n, Gols):-
    findall(Jogador, jogador(Jogador, _, _, _, _, Gols, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Assistêncis --- %
atualizar_assists(s, Assists):-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, Assists), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao),
    exclui_perguntas_assist.
atualizar_assists(n, Assists):-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, Assists), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %



% --- REI PELÉ --- %

atualizar_selecao(rei, _):- 
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

atualizar_posicao(rei, _):-
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

atualizar_time(rei, _):-
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

atualizar_idade(rei, _):-
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

atualizar_gols(rei, _):-
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

atualizar_assists(rei, _):-
    nl, nl,
    write("*-------------------------------*"), nl,
    write("  O seu jogador é o Pelé *** !"), nl,
    write("  *** Em memória ao Rei *** "), nl,
    write("*-------------------------------*"), nl, nl,
    halt.

% ------------------------- %