% ---------- Lida com respostas negativas ---------- %
exclui_jogadores_da_lista(ListaDeJogadores) :-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, _), TodosJogadores),
    remove_in(TodosJogadores, ListaDeJogadores).

remove_in(All, [H|T]) :- (
    member(H, All) -> 
        retract(jogador(H, _, _, _, _, _, _)) , remove_in(All, T) ;
        remove_in(All, T)
).
remove_in(All, []) :- !.
% -------------------------------------------------- %


% ---------- Lida com respostas positivas ---------- %
exclui_jogadores_fora_da_lista(ListaDeJogadores) :-
    findall(Jogador, jogador(Jogador, _, _, _, _, _, _), TodosJogadores),
    remove_out(TodosJogadores, ListaDeJogadores).

remove_out([H|T], Lista) :- 
    member(H, Lista),
    remove_out(T, Lista).

remove_out([H|T], Lista) :- 
    retract(jogador(H, _, _, _, _, _, _)),
    remove_out(T, Lista).

remove_out([], Lista) :- !.
% -------------------------------------------------- %