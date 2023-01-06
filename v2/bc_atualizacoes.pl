:- module(bc_atualizacoes, [atualizar_selecao/2, atualizar_posicao/2, atualizar_time/2, atualizar_idade/2, atualizar_gols/2, atualizar_gols/2]).
:- use_module([define_jogadores]).

% --- Atualizar Selecao --- %
atualizar_selecao(s, Selecao):- 
    findall(Jogador, jogador(Jogador, Selecao, _, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_selecao(n, Selecao):- 
    findall(Jogador, jogador(Jogador, Selecao, _, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Posição --- %
atualizar_posicao(s, Posicao):-
    findall(Jogador, jogador(Jogador, _, Posicao, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_posicao(n, Posicao):- 
    findall(Jogador, jogador(Jogador, _, Posicao, _, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Time ------ %
atualizar_time(s, Time):-
    findall(Jogador, jogador(Jogador, _, _, Time, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_time(n, Time):-
    findall(Jogador, jogador(Jogador, _, _, Time, _, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Idade ----- %
atualizar_idade(s, Idade):-
    findall(Jogador, jogador(Jogador, _, _, _, Idade, _, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_idade(n, Idade):-
    findall(Jogador, jogador(Jogador, _, _, _, Idade, _, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Gols ------ %
atualizar_gols(s, Gols):-
    findall(Jogador, jogador(Jogador, _, _, _, _, Gols, _), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_gols(n, Gols):-
    findall(Jogador, jogador(Jogador, _, _, _, _, Gols, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %


% --- Atualizar Assistêncis --- %
atualizar_assists(s, Assists):-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, Assists), JogadoresDaSelecao),
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_assists(n, Assists):-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, Assists), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------- %
