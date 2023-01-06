:- dynamic jogador/4.

:- initialization(fluxo_do_jogo).

% jogador, posicao, selecao, camisa
jogador(ney, atacante, brasil, 10).
pergunta(ney, brasil).
pergunta(ney, camisa10).

jogador(richarlisson, atacante, brasil, 9).
pergunta(richarlisson, brasil).
pergunta(richarlisson, camisa9).

jogador(messi, atacante, argentina, 10).
pergunta(messi, argentina).
pergunta(messi, camisa10).

verifica_vitoria(0):- write("Perdemos"), halt.
verifica_vitoria(1):- write("Ganhamos"), halt.
verifica_vitoria(X):- !.

fluxo_do_jogo:- % verifica vitória
                findall(X, jogador(X, _, _, _), Jogadores),
                length(Jogadores, QuantidadeDeJogadores),
                verifica_vitoria(QuantidadeDeJogadores),

                % randomiza jogador
                random_member(JogadorAleatorio, Jogadores),
                write(JogadorAleatorio), nl,

                % randomiza pergunta
                findall(X, pergunta(JogadorAleatorio, X), PerguntasDoJogador),
                random_member(TemaDaPergunta, PerguntasDoJogador),
                lidar_pergunta(TemaDaPergunta).
                fluxo_do_jogo.

% ------ Lidar com nacionalidades ------ %
lidar_pergunta(brasil) :-
    write("Seu jogador é brasileiro? "),
    read(Ans),
    atualizar_nacionalidade(Ans, brasil).

lidar_pergunta(argentina) :- 
    write("Seu jogador é argentino? "),
    read(Ans),
    atualizar_nacionalidade(Ans, argentina).
% ------ Lidar com nacionalidades ------ %


% ------ Lidar com camisas ------ %
lidar_pergunta(camisa10) :-
    write("Seu jogador é o camisa 10? "),
    read(Ans),
    atualizar_camisa(Ans, 10).

lidar_pergunta(camisa9) :-
    write("Seu jogador é o camisa 9? "),
    read(Ans),
    atualizar_camisa(Ans, 9).
% ------ Lidar com camisas ------ %


% ------ Atualiza nacionalidades ------ %
atualizar_nacionalidade(s, Selecao):-
    findall(Jogador, jogador(Jogador, _, Selecao, _), JogadoresDaSelecao),
    write(JogadoresDaSelecao), nl,
    limpar_base_inteira(X),
    adiciona_jogadores_da_lista(JogadoresDaSelecao).
atualizar_nacionalidade(n, Selecao):- 
    findall(Jogador, jogador(Jogador, _, Selecao, _), JogadoresDaSelecao),
    remove_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------------------- %

% jogador, posicao, selecao, camisa

% ------ Atualiza camisa ------ %
atualizar_camisa(s, Numero) :- 
    findall(Jogador, jogador(Jogador, _, _, Numero), JogadoresDaCamisa),
    limpar_base_inteira(X),
    adiciona_jogadores_da_lista(JogadoresDaCamisa).

atualizar_camisa(n, Numero) :- 
    findall(Jogador, jogador(Jogador, _, _, Numero), JogadoresDaCamisa),
    remove_jogadores_da_lista(JogadoresDaCamisa).
% ----------------------------- %


remove_jogadores_da_lista([H|T]) :-
    retract(jogador(H)),
    remove_jogadores_da_lista(T).
remove_jogadores_da_lista([]) :- !.

adiciona_jogadores_da_lista([H|T]) :-
    assert(jogador(H)),
    adiciona_jogadores_da_lista(T).
adiciona_jogadores_da_lista([]) :- !.

limpar_base_inteira(X) :- limpa_jogador(X), fail.
limpar_base_inteira(X).

limpa_jogador(X) :- retract(jogador(X)).
limpa_jogador(X).