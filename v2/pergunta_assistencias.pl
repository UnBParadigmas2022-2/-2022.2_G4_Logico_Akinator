lidar_pergunta(assist0) :-
    write("Seu jogador fez 0 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assists(Ans, assist0).

lidar_pergunta(assist1) :-
    write("Seu jogador fez 1 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assists(Ans, assist1).

lidar_pergunta(assist2) :-
    write("Seu jogador fez 2 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assists(Ans, assist2).

lidar_pergunta(assist3) :-
    write("Seu jogador fez 3 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assists(Ans, assist3).