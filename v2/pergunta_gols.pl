:- use_module([bc_atualizacoes]).

lidar_pergunta(gol0) :-
    write("Seu jogador fez 0 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol0).

lidar_pergunta(gol1) :-
    write("Seu jogador fez 1 gol na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol1).

lidar_pergunta(gol2) :-
    write("Seu jogador fez 2 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol2).

lidar_pergunta(gol3) :-
    write("Seu jogador fez 3 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol3).

lidar_pergunta(gol4) :-
    write("Seu jogador fez 4 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol4).

lidar_pergunta(seteGols) :-
    write("Seu jogador fez 7 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol7).

lidar_pergunta(oitoGols) :-
    write("Seu jogador fez 8 gols na copa do mundo? "),
    read(Ans),
    atualizar_gols(Ans, gol8).