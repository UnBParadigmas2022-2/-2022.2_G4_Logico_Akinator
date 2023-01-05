:- dynamic player/1.

player(neymar).
team(neymar, brasil).

player(paqueta).
team(paqueta, brasil).

player(messi).
team(messi, argentina).

player(mbappe).
team(mbappe, franca).

remove_all_except :- 
    findall(Player, selecao(Player, argentina), Players),
    write(Players),
    clean_all_players(X),
    register_new_players(Brasileiros).

clean_all_players(X):- 
    clean_all_players1(X),
    fail.
clean_all_players(X).

clean_all_players1(X):- 
    retract(player(X)).
clean_all_players1(X).

register_new_players([H|T]):- register_player(H), register_new_players(T).
register_new_players([]):-!.

register_player(X) :- assert(player(X)).