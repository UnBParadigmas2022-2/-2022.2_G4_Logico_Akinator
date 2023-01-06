lidar_pergunta(zeroGols) :-
    write("Seu jogador fez 0 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, zeroGols).

lidar_pergunta(umGol) :-
    write("Seu jogador fez 1 gol na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, umGol).

lidar_pergunta(doisGol) :-
    write("Seu jogador fez 2 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, doisGols).

lidar_pergunta(tresGols) :-
    write("Seu jogador fez 3 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, tresGols).

lidar_pergunta(quatroGols) :-
    write("Seu jogador fez 4 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, quatroGols).

lidar_pergunta(seteGols) :-
    write("Seu jogador fez 7 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, seteGols).

lidar_pergunta(oitoGols) :-
    write("Seu jogador fez 8 gols na copa do mundo?"),
    read(Ans),
    atualizar_gols(Ans, oitoGols).