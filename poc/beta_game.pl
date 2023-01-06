:- dynamic jogador/4.

:- use_module(library(lists)).

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

% função que verifica a condição
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
                lidar_pergunta(TemaDaPergunta),
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
    exclui_jogadores_fora_da_lista(JogadoresDaSelecao).
atualizar_nacionalidade(n, Selecao):- 
    findall(Jogador, jogador(Jogador, _, Selecao, _), JogadoresDaSelecao),
    exclui_jogadores_da_lista(JogadoresDaSelecao).
% ------------------------------------- %


% ------ Atualiza camisa ------ %
atualizar_camisa(s, Numero) :- 
    findall(Jogador, jogador(Jogador, _, _, Numero), JogadoresDaCamisa),
    exclui_jogadores_fora_da_lista(JogadoresDaCamisa).

atualizar_camisa(n, Numero) :- 
    findall(Jogador, jogador(Jogador, _, _, Numero), JogadoresDaCamisa),
    exclui_jogadores_da_lista(JogadoresDaCamisa).
% ----------------------------- %


% ---------- Lida com respostas negativas ---------- %
exclui_jogadores_da_lista(ListaDeJogadores) :-
    findall(Jogador, jogador(Jogador, _, _, _), TodosJogadores),
    remove_in(TodosJogadores, ListaDeJogadores).

remove_in(All, [H|T]) :- (
    member(H, All) -> 
        retract(jogador(H,_,_,_)) , remove_in(All, T) ;
        remove_in(All, T)
).
remove_in(All, []) :- !.
% ---------- Lida com respostas negativas ---------- %


% ---------- Lida com respostas positivas ---------- %
exclui_jogadores_fora_da_lista(ListaDeJogadores) :-
    findall(Jogador, jogador(Jogador, _, _, _), TodosJogadores),
    remove_out(TodosJogadores, ListaDeJogadores).

remove_out([H|T], Lista) :- 
    member(H, Lista),
    remove_out(T, Lista).

remove_out([H|T], Lista) :- 
    retract(jogador(H,_,_,_)),
    remove_out(T, Lista).

remove_out([], Lista) :- !.
% ---------- Lida com respostas positivas ---------- %



% --- testes --- %
verifica_lista(Novo) :- 
    findall(Jogador, jogador(Jogador, _, _, _), Lista),
    member(Novo, Lista).

verifica_lista_not(Novo) :- 
    findall(Jogador, jogador(Jogador, _, _, _), Lista),
    not(member(Novo, Lista)).


exemplo_if(X) :- (
    X < 0 ->
        write("Eh menor"), nl ;
        write("Eh maior ou igual"), nl
).
    