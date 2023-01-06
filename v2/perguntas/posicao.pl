lidar_pergunta(goleiro) :-
    write("Seu jogador é goleiro? "),
    read(Ans),
    atualizar_posicao(Ans, goleiro).

lidar_pergunta(defensor) :-
    write("Seu jogador é defensor? "),
    read(Ans),
    atualizar_posicao(Ans, defensor).

lidar_pergunta(meia) :-
    write("Seu jogador é meia? "),
    read(Ans),
    atualizar_posicao(Ans, meia).

lidar_pergunta(atacante) :-
    write("Seu jogador é atacante? "),
    read(Ans),
    atualizar_posicao(Ans, atacante).