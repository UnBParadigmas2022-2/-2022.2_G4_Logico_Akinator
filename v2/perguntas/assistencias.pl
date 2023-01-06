lidar_pergunta(zeroAssistencias) :-
    write("Seu jogador fez 0 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assistencias(Ans, zeroAssistencias).

lidar_pergunta(umaAssistencia) :-
    write("Seu jogador fez 1 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assistencias(Ans, umaAssistencia).

lidar_pergunta(duasAssistencias) :-
    write("Seu jogador fez 2 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assistencias(Ans, duasAssistencias).

lidar_pergunta(tresAssistencias) :-
    write("Seu jogador fez 3 assistências na copa do mundo?"),
    read(Ans),
    atualizar_assistencias(Ans, tresAssistencias).