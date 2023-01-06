:- module(perguntas, [lidar_pergunta/1, limpa_perguntas/1]).
:- use_module([bc_atualizacoes]).

limpa_perguntas(X) :- limpa_perguntas1(X), fail.
limpa_perguntas(X).
limpa_perguntas1(X) :- retract(pergunta(_, _)).
limpa_perguntas1(X).

% ---- Assistências ---- %
%% Jogador(Nome, Seleção, Posição, Clube, Idade, Gols na Copa, Assistências na Copa).
lidar_pergunta(assist0) :-
    write("Seu jogador fez 0 assistências na copa do mundo? "),
    read(Ans),
    atualizar_assists(Ans, assist0).

lidar_pergunta(assist1) :-
    write("Seu jogador fez 1 assistências na copa do mundo? "),
    read(Ans),
    atualizar_assists(Ans, assist1).

lidar_pergunta(assist2) :-
    write("Seu jogador fez 2 assistências na copa do mundo? "),
    read(Ans),
    atualizar_assists(Ans, assist2).

lidar_pergunta(assist3) :-
    write("Seu jogador fez 3 assistências na copa do mundo? "),
    read(Ans),
    atualizar_assists(Ans, assist3).


% ---- gols ---- %
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


% ---- Idade ---- %
lidar_pergunta(idade18) :-
    write("Seu jogador possui 18 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade18).

lidar_pergunta(idade19) :-
    write("Seu jogador possui 19 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade19).

lidar_pergunta(idade20) :-
    write("Seu jogador possui 20 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade20).

lidar_pergunta(idade21) :-
    write("Seu jogador possui 21 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade21).

lidar_pergunta(idade22) :-
    write("Seu jogador possui 22 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade22).

lidar_pergunta(idade23) :-
    write("Seu jogador possui 23 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade23).

lidar_pergunta(idade24) :-
    write("Seu jogador possui 24 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade24).

lidar_pergunta(idade25) :-
    write("Seu jogador possui 25 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade25).

lidar_pergunta(idade26) :-
    write("Seu jogador possui 26 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade26).

lidar_pergunta(idade27) :-
    write("Seu jogador possui 27 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade27).

lidar_pergunta(idade28) :-
    write("Seu jogador possui 28 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade28).

lidar_pergunta(idade29) :-
    write("Seu jogador possui 29 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade29).

lidar_pergunta(idade30) :-
    write("Seu jogador possui 30 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade30).

lidar_pergunta(idade31) :-
    write("Seu jogador possui 31 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade31).

lidar_pergunta(idade32) :-
    write("Seu jogador possui 32 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade32).

lidar_pergunta(idade33) :-
    write("Seu jogador possui 33 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade33).

lidar_pergunta(idade34) :-
    write("Seu jogador possui 34 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade34).

lidar_pergunta(idade35) :-
    write("Seu jogador possui 35 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade35).

lidar_pergunta(idade36) :-
    write("Seu jogador possui 36 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade36).

lidar_pergunta(idade37) :-
    write("Seu jogador possui 37 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade37).

lidar_pergunta(idade38) :-
    write("Seu jogador possui 38 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade38).

lidar_pergunta(idade39) :-
    write("Seu jogador possui 39 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade39).

lidar_pergunta(idade40) :-
    write("Seu jogador possui 40 anos? "),
    read(Ans),
    atualizar_idade(Ans, idade40).


% ---- Posicao ---- %
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

% ---- Seleção ---- %
lidar_pergunta(qatar) :- 
    write("Seu jogador é qatariano? "),
    read(Ans),
    atualizar_selecao(Ans, qatar).

lidar_pergunta(equador) :- 
    write("Seu jogador é equatoriano? "),
    read(Ans),
    atualizar_selecao(Ans, equador).
    
lidar_pergunta(senegal) :- 
    write("Seu jogador é senegales? "),
    read(Ans),
    atualizar_selecao(Ans, senegal).

lidar_pergunta(holanda) :- 
    write("Seu jogador é holandês? "),
    read(Ans),
    atualizar_selecao(Ans, holanda).

lidar_pergunta(inglaterra) :- 
    write("Seu jogador é inglês? "),
    read(Ans),
    atualizar_selecao(Ans, inglaterra).

lidar_pergunta(ira) :- 
    write("Seu jogador é iraniano? "),
    read(Ans),
    atualizar_selecao(Ans, ira).

lidar_pergunta(estadosUnidos) :- 
    write("Seu jogador é americano? "),
    read(Ans),
    atualizar_selecao(Ans, estadosUnidos).

lidar_pergunta(paisDeGales) :- 
    write("Seu jogador é gales? "),
    read(Ans),
    atualizar_selecao(Ans, paisDeGales).

lidar_pergunta(arabiaSaudita) :- 
    write("Seu jogador é árabe? "),
    read(Ans),
    atualizar_selecao(Ans, arabiaSaudita).

lidar_pergunta(mexico) :- 
    write("Seu jogador é méxico? "),
    read(Ans),
    atualizar_selecao(Ans, mexico).

lidar_pergunta(polonia) :- 
    write("Seu jogador é polônes? "),
    read(Ans),
    atualizar_selecao(Ans, polonia).

lidar_pergunta(franca) :- 
    write("Seu jogador é frances? "),
    read(Ans),
    atualizar_selecao(Ans, franca).

lidar_pergunta(dinamarca) :- 
    write("Seu jogador é dinamarquês? "),
    read(Ans),
    atualizar_selecao(Ans, dinamarca).

lidar_pergunta(tunisia) :- 
    write("Seu jogador é tunisiano? "),
    read(Ans),
    atualizar_selecao(Ans, tunisia).

lidar_pergunta(australia) :- 
    write("Seu jogador é australiano? "),
    read(Ans),
    atualizar_selecao(Ans, australia).

lidar_pergunta(espanha) :- 
    write("Seu jogador é espanhol? "),
    read(Ans),
    atualizar_selecao(Ans, espanha).

lidar_pergunta(alemanha) :- 
    write("Seu jogador é alemão? "),
    read(Ans),
    atualizar_selecao(Ans, alemanha).

lidar_pergunta(japao) :- 
    write("Seu jogador é japônes? "),
    read(Ans),
    atualizar_selecao(Ans, japao).

lidar_pergunta(costaRica) :- 
    write("Seu jogador é costarriquenho? "),
    read(Ans),
    atualizar_selecao(Ans, costaRica).

lidar_pergunta(belgica) :- 
    write("Seu jogador é belga? "),
    read(Ans),
    atualizar_selecao(Ans, belgica).

lidar_pergunta(marrocos) :- 
    write("Seu jogador é marroquino? "),
    read(Ans),
    atualizar_selecao(Ans, marrocos).

lidar_pergunta(croacia) :- 
    write("Seu jogador é croata? "),
    read(Ans),
    atualizar_selecao(Ans, croacia).

lidar_pergunta(brasil) :- 
    write("Seu jogador é brasileiro? "),
    read(Ans),
    atualizar_selecao(Ans, brasil).

lidar_pergunta(servia) :- 
    write("Seu jogador é sérvio? "),
    read(Ans),
    atualizar_selecao(Ans, servia).

lidar_pergunta(suica) :- 
    write("Seu jogador é suiço? "),
    read(Ans),
    atualizar_selecao(Ans, suica).

lidar_pergunta(camaroes) :- 
    write("Seu jogador é camaronês? "),
    read(Ans),
    atualizar_selecao(Ans, camaroes).

lidar_pergunta(portugal) :- 
    write("Seu jogador é portuguÊs? "),
    read(Ans),
    atualizar_selecao(Ans, portugal).

lidar_pergunta(gana) :- 
    write("Seu jogador é ganes? "),
    read(Ans),
    atualizar_selecao(Ans, gana).

lidar_pergunta(uruguai) :- 
    write("Seu jogador é uruguaio? "),
    read(Ans),
    atualizar_selecao(Ans, uruguai).

lidar_pergunta(coreiaDoSul) :- 
    write("Seu jogador é coreano? "),
    read(Ans),
    atualizar_selecao(Ans, coreiaDoSul).


% ---- time ---- %
lidar_pergunta(augsburg) :-
    write("Seu jogador joga no time Augsburg? "),
    read(Ans),
    atualizar_time(Ans, augsburg).

lidar_pergunta(bayerLeverkusen) :-
    write("Seu jogador joga no time Bayer Leverkusen? "),
    read(Ans),
    atualizar_time(Ans, bayerLeverkusen).

lidar_pergunta(bayern) :-
    write("Seu jogador joga no time Bayern? "),
    read(Ans),
    atualizar_time(Ans, bayern).

lidar_pergunta(bochum) :-
    write("Seu jogador joga no time Bochum? "),
    read(Ans),
    atualizar_time(Ans, bochum).

lidar_pergunta(borussiaDortmund) :-
    write("Seu jogador joga no time Borussia Dortmund? "),
    read(Ans),
    atualizar_time(Ans, borussiaDortmund).

lidar_pergunta(gladbach) :-
    write("Seu jogador joga no time Gladbach? "),
    read(Ans),
    atualizar_time(Ans, gladbach).

lidar_pergunta(leipzig) :-
    write("Seu jogador joga no time Leipzig? "),
    read(Ans),
    atualizar_time(Ans, leipzig).

lidar_pergunta(mainz) :-
    write("Seu jogador joga no time Mainz? "),
    read(Ans),
    atualizar_time(Ans, mainz).

lidar_pergunta(schalke) :-
    write("Seu jogador joga no time Schalke? "),
    read(Ans),
    atualizar_time(Ans, schalke).

lidar_pergunta(stuttgart) :-
    write("Seu jogador joga no time Stuttgart? "),
    read(Ans),
    atualizar_time(Ans, stuttgart).

lidar_pergunta(frankfurt) :-
    write("Seu jogador joga no time Frankfurt? "),
    read(Ans),
    atualizar_time(Ans, frankfurt).

lidar_pergunta(freiburg) :-
    write("Seu jogador joga no time Freiburg? "),
    read(Ans),
    atualizar_time(Ans, freiburg).

lidar_pergunta(werderBremen) :-
    write("Seu jogador joga no time Werder Bremen? "),
    read(Ans),
    atualizar_time(Ans, werderBremen).

lidar_pergunta(alNassr) :-
    write("Seu jogador joga no time AL Nassr? "),
    read(Ans),
    atualizar_time(Ans, alNassr).

lidar_pergunta(alShabab) :-
    write("Seu jogador joga no time AL Shabab? "),
    read(Ans),
    atualizar_time(Ans, alShabab).

lidar_pergunta(riverplate) :-
    write("Seu jogador joga no time Riverplate? "),
    read(Ans),
    atualizar_time(Ans, riverplate).

lidar_pergunta(talleres) :-
    write("Seu jogador joga no time Talleres? "),
    read(Ans),
    atualizar_time(Ans, talleres).

lidar_pergunta(salzburg) :-
    write("Seu jogador joga no time Salzburg? "),
    read(Ans),
    atualizar_time(Ans, salzburg).

lidar_pergunta(anderlecht) :-
    write("Seu jogador joga no time Anderlecht? "),
    read(Ans),
    atualizar_time(Ans, anderlecht).

lidar_pergunta(brugge) :-
    write("Seu jogador joga no time Brugge? "),
    read(Ans),
    atualizar_time(Ans, brugge).

lidar_pergunta(racingGenk) :-
    write("Seu jogador joga no time Racing Genk? "),
    read(Ans),
    atualizar_time(Ans, brugge).

lidar_pergunta(flamengo) :-
    write("Seu jogador joga no time Flamengo? "),
    read(Ans),
    atualizar_time(Ans, flamengo).

lidar_pergunta(gremio) :-
    write("Seu jogador joga no time Gremio? "),
    read(Ans),
    atualizar_time(Ans, gremio).

lidar_pergunta(montreal) :-
    write("Seu jogador joga no time Montreal? "),
    read(Ans),
    atualizar_time(Ans, montreal).

lidar_pergunta(toronto) :-
    write("Seu jogador joga no time Toronto? "),
    read(Ans),
    atualizar_time(Ans, toronto).

lidar_pergunta(alSadd) :-
    write("Seu jogador joga no time AL Sadd? "),
    read(Ans),
    atualizar_time(Ans, alSadd).

lidar_pergunta(alGharafa) :-
    write("Seu jogador joga no time AL Gharafa? "),
    read(Ans),
    atualizar_time(Ans, alGharafa).

lidar_pergunta(alRayyan) :-
    write("Seu jogador joga no time AL Rayyan? "),
    read(Ans),
    atualizar_time(Ans, alRayyan).

lidar_pergunta(alDuhail) :-
    write("Seu jogador joga no time AL Duhail? "),
    read(Ans),
    atualizar_time(Ans, alDuhail).

lidar_pergunta(millonarios) :-
    write("Seu jogador joga no time Millonarios? "),
    read(Ans),
    atualizar_time(Ans, millonarios).

lidar_pergunta(alajuelense) :-
    write("Seu jogador joga no time Alajuelense? "),
    read(Ans),
    atualizar_time(Ans, alajuelense).

lidar_pergunta(herediano) :-
    write("Seu jogador joga no time Herediano? "),
    read(Ans),
    atualizar_time(Ans, herediano).

lidar_pergunta(saprissa) :-
    write("Seu jogador joga no time Saprissa? "),
    read(Ans),
    atualizar_time(Ans, saprissa).

lidar_pergunta(jeonbukMotors) :-
    write("Seu jogador joga no time Jeonbuk Motors? "),
    read(Ans),
    atualizar_time(Ans, jeonbukMotors).

lidar_pergunta(ulsan) :-
    write("Seu jogador joga no time Ulsan? "),
    read(Ans),
    atualizar_time(Ans, ulsan).

lidar_pergunta(dZagreb) :-
    write("Seu jogador joga no time Dzagreb? "),
    read(Ans),
    atualizar_time(Ans, dZagreb).

lidar_pergunta(hajdukSplit) :-
    write("Seu jogador joga no time Hajduk Split? "),
    read(Ans),
    atualizar_time(Ans, hajdukSplit).

lidar_pergunta(aucas) :-
    write("Seu jogador joga no time Aucas? "),
    read(Ans),
    atualizar_time(Ans, aucas).

lidar_pergunta(celtic) :-
    write("Seu jogador joga no time Celtic? "),
    read(Ans),
    atualizar_time(Ans, celtic).

lidar_pergunta(athletic) :-
    write("Seu jogador joga no time Athletic? "),
    read(Ans),
    atualizar_time(Ans, athletic).

lidar_pergunta(atleticoDeMadrid) :-
    write("Seu jogador joga no time Atletico de Madrid? "),
    read(Ans),
    atualizar_time(Ans, atleticoDeMadrid).

lidar_pergunta(barcelona) :-
    write("Seu jogador joga no time Barcelona? "),
    read(Ans),
    atualizar_time(Ans, barcelona).

lidar_pergunta(getafe) :-
    write("Seu jogador joga no time Getafe? "),
    read(Ans),
    atualizar_time(Ans, getafe).

lidar_pergunta(levante) :-
    write("Seu jogador joga no time Levante? "),
    read(Ans),
    atualizar_time(Ans, levante).

lidar_pergunta(mallorca) :-
    write("Seu jogador joga no time Mallorca? "),
    read(Ans),
    atualizar_time(Ans, mallorca).

lidar_pergunta(rayoVallecano) :-
    write("Seu jogador joga no time Rayo Vallecano? "),
    read(Ans),
    atualizar_time(Ans, rayoVallecano).

lidar_pergunta(realBetis) :-
    write("Seu jogador joga no time Real Betis? "),
    read(Ans),
    atualizar_time(Ans, realBetis).

lidar_pergunta(realMadrid) :-
    write("Seu jogador joga no time Real Madrid? "),
    read(Ans),
    atualizar_time(Ans, realMadrid).

lidar_pergunta(sevilla) :-
    write("Seu jogador joga no time Sevilla? "),
    read(Ans),
    atualizar_time(Ans, sevilla).

lidar_pergunta(valencia) :-
    write("Seu jogador joga no time Valencia? "),
    read(Ans),
    atualizar_time(Ans, valencia).

lidar_pergunta(valladolid) :-
    write("Seu jogador joga no time Valladolid? "),
    read(Ans),
    atualizar_time(Ans, valladolid).

lidar_pergunta(chicago) :-
    write("Seu jogador joga no time Chicago? "),
    read(Ans),
    atualizar_time(Ans, chicago).

lidar_pergunta(cincinnati) :-
    write("Seu jogador joga no time Cincinnati? "),
    read(Ans),
    atualizar_time(Ans, cincinnati).

lidar_pergunta(fcDallas) :-
    write("Seu jogador joga no time FC Dallas? "),
    read(Ans),
    atualizar_time(Ans, fcDallas).

lidar_pergunta(lafc) :-
    write("Seu jogador joga no time LAFC? "),
    read(Ans),
    atualizar_time(Ans, lafc).

lidar_pergunta(nashvilleSC) :-
    write("Seu jogador joga no time Nashville SC? "),
    read(Ans),
    atualizar_time(Ans, nashvilleSC).

lidar_pergunta(saltLake) :-
    write("Seu jogador joga no time SaltLake? "),
    read(Ans),
    atualizar_time(Ans, saltLake).

lidar_pergunta(brest) :-
    write("Seu jogador joga no time Brest? "),
    read(Ans),
    atualizar_time(Ans, brest).

lidar_pergunta(lens) :-
    write("Seu jogador joga no time Lens? "),
    read(Ans),
    atualizar_time(Ans, lens).

lidar_pergunta(lille) :-
    write("Seu jogador joga no time Lille? "),
    read(Ans),
    atualizar_time(Ans, lille).

lidar_pergunta(lyon) :-
    write("Seu jogador joga no time Lyon? "),
    read(Ans),
    atualizar_time(Ans, lyon).

lidar_pergunta(monaco) :-
    write("Seu jogador joga no time Monaco? "),
    read(Ans),
    atualizar_time(Ans, monaco).

lidar_pergunta(psg) :-
    write("Seu jogador joga no time PSG? "),
    read(Ans),
    atualizar_time(Ans, psg).

lidar_pergunta(reims) :-
    write("Seu jogador joga no time Reims? "),
    read(Ans),
    atualizar_time(Ans, reims).

lidar_pergunta(paok) :-
    write("Seu jogador joga no time Paok? "),
    read(Ans),
    atualizar_time(Ans, paok).

lidar_pergunta(olympiacos) :-
    write("Seu jogador joga no time Olympiacos? "),
    read(Ans),
    atualizar_time(Ans, olympiacos).

lidar_pergunta(ajax) :-
    write("Seu jogador joga no time Ajax? "),
    read(Ans),
    atualizar_time(Ans, ajax).

lidar_pergunta(heerenveen) :-
    write("Seu jogador joga no time Heerenveen? "),
    read(Ans),
    atualizar_time(Ans, heerenveen).

lidar_pergunta(psv) :-
    write("Seu jogador joga no time PSV? "),
    read(Ans),
    atualizar_time(Ans, psv).

lidar_pergunta(arsenal) :-
    write("Seu jogador joga no time Arsenal? "),
    read(Ans),
    atualizar_time(Ans, arsenal).

lidar_pergunta(astonVilla) :-
    write("Seu jogador joga no time Aston Villa? "),
    read(Ans),
    atualizar_time(Ans, astonVilla).

lidar_pergunta(brighton) :-
    write("Seu jogador joga no time Brighton? "),
    read(Ans),
    atualizar_time(Ans, brighton).

lidar_pergunta(chelsea) :-
    write("Seu jogador joga no time Chelsea? "),
    read(Ans),
    atualizar_time(Ans, chelsea).

lidar_pergunta(crystalPalace) :-
    write("Seu jogador joga no time Crystal Palace? "),
    read(Ans),
    atualizar_time(Ans, crystalPalace).

lidar_pergunta(everton) :-
    write("Seu jogador joga no time Everton? "),
    read(Ans),
    atualizar_time(Ans, everton).

lidar_pergunta(fulham) :-
    write("Seu jogador joga no time Fulham? "),
    read(Ans),
    atualizar_time(Ans, fulham).

lidar_pergunta(leedsUnited) :-
    write("Seu jogador joga no time Leeds United? "),
    read(Ans),
    atualizar_time(Ans, leedsUnited).

lidar_pergunta(leicester) :-
    write("Seu jogador joga no time Leicester? "),
    read(Ans),
    atualizar_time(Ans, leicester).

lidar_pergunta(liverpool) :-
    write("Seu jogador joga no time Liverpool? "),
    read(Ans),
    atualizar_time(Ans, liverpool).

lidar_pergunta(manchesterCity) :-
    write("Seu jogador joga no time Manchester City? "),
    read(Ans),
    atualizar_time(Ans, manchesterCity).

lidar_pergunta(manchesterUnited) :-
    write("Seu jogador joga no time Manchester United? "),
    read(Ans),
    atualizar_time(Ans, manchesterUnited).

lidar_pergunta(nottinghamForest) :-
    write("Seu jogador joga no time Nottingham Forest? "),
    read(Ans),
    atualizar_time(Ans, nottinghamForest).

lidar_pergunta(reading) :-
    write("Seu jogador joga no time Reading? "),
    read(Ans),
    atualizar_time(Ans, reading).

lidar_pergunta(sheffieldUnited) :-
    write("Seu jogador joga no time Sheffield United? "),
    read(Ans),
    atualizar_time(Ans, reading).

lidar_pergunta(southampton) :-
    write("Seu jogador joga no time Southampton? "),
    read(Ans),
    atualizar_time(Ans, southampton).

lidar_pergunta(sunderland) :-
    write("Seu jogador joga no time Sunderland? "),
    read(Ans),
    atualizar_time(Ans, sunderland).

lidar_pergunta(tottenham) :-
    write("Seu jogador joga no time Tottenham? "),
    read(Ans),
    atualizar_time(Ans, tottenham).

lidar_pergunta(watford) :-
    write("Seu jogador joga no time Watford? "),
    read(Ans),
    atualizar_time(Ans, watford).

lidar_pergunta(westHam) :-
    write("Seu jogador joga no time WestHam? "),
    read(Ans),
    atualizar_time(Ans, westHam).

lidar_pergunta(wolves) :-
    write("Seu jogador joga no time Wolves? "),
    read(Ans),
    atualizar_time(Ans, wolves).

lidar_pergunta(atalanta) :-
    write("Seu jogador joga no time Atalanta? "),
    read(Ans),
    atualizar_time(Ans, atalanta).

lidar_pergunta(fiorentina) :-
    write("Seu jogador joga no time Fiorentina? "),
    read(Ans),
    atualizar_time(Ans, fiorentina).

lidar_pergunta(inter) :-
    write("Seu jogador joga no time Inter? "),
    read(Ans),
    atualizar_time(Ans, inter).

lidar_pergunta(juventus) :-
    write("Seu jogador joga no time Juventus? "),
    read(Ans),
    atualizar_time(Ans, juventus).

lidar_pergunta(lazio) :-
    write("Seu jogador joga no time Lazio? "),
    read(Ans),
    atualizar_time(Ans, lazio).

lidar_pergunta(milan) :-
    write("Seu jogador joga no time Milan? "),
    read(Ans),
    atualizar_time(Ans, milan).

lidar_pergunta(napoli) :-
    write("Seu jogador joga no time Napoli? "),
    read(Ans),
    atualizar_time(Ans, napoli).

lidar_pergunta(salernitana) :-
    write("Seu jogador joga no time Salernitana? "),
    read(Ans),
    atualizar_time(Ans, salernitana).

lidar_pergunta(sampdoria) :-
    write("Seu jogador joga no time Sampdoria? "),
    read(Ans),
    atualizar_time(Ans, sampdoria).

lidar_pergunta(torino) :-
    write("Seu jogador joga no time Torino? "),
    read(Ans),
    atualizar_time(Ans, torino).

lidar_pergunta(shimizuSPulse) :- 
    write("Seu jogador joga no time ShimizuSPulse? "), 
    read(Ans), 
    atualizar_time(Ans, shimizuSPulse). 

lidar_pergunta(tokyo) :- 
    write("Seu jogador joga no time Tokyo? "), 
    read(Ans), 
    atualizar_time(Ans, tokyo). 
 
lidar_pergunta(wydad) :- 
    write("Seu jogador joga no time Wydad? "), 
    read(Ans), 
    atualizar_time(Ans, wydad). 

lidar_pergunta(santos) :- 
    write("Seu jogador joga no time Santos? "), 
    read(Ans), 
    atualizar_time(Ans, santos). 

lidar_pergunta(pachuca) :- 
    write("Seu jogador joga no time Pachuca? "), 
    read(Ans), 
    atualizar_time(Ans, pachuca). 
 
lidar_pergunta(cruzAzul) :- 
    write("Seu jogador joga no time Cruz Azul? "), 
    read(Ans), 
    atualizar_time(Ans, cruzAzul). 
 
lidar_pergunta(benfica) :- 
    write("Seu jogador joga no time Benfica? "), 
    read(Ans), 
    atualizar_time(Ans, benfica). 
 
lidar_pergunta(chaves) :- 
    write("Seu jogador joga no time Chaves? "), 
    read(Ans), 
    atualizar_time(Ans, chaves). 
 
lidar_pergunta(porto) :- 
    write("Seu jogador joga no time Porto? "), 
    read(Ans), 
    atualizar_time(Ans, porto). 
 
lidar_pergunta(stGallen) :- 
    write("Seu jogador joga no time StGallen? "), 
    read(Ans), 
    atualizar_time(Ans, stGallen). 
 
lidar_pergunta(antalyaspor) :- 
    write("Seu jogador joga no time Antalyaspor? "), 
    read(Ans), 
    atualizar_time(Ans, antalyaspor). 
 
lidar_pergunta(besiktas) :- 
    write("Seu jogador joga no time Besiktas? "), 
    read(Ans), 
    atualizar_time(Ans, besiktas). 

lidar_pergunta(fenerbahce) :- 
    write("Seu jogador joga no time Fenerbahce? "), 
    read(Ans), 
    atualizar_time(Ans, fenerbahce). 
 
lidar_pergunta(hataysport) :- 
    write("Seu jogador joga no time Hataysport? "), 
    read(Ans), 
    atualizar_time(Ans, hataysport). 
 
lidar_pergunta(nacional) :- 
    write("Seu jogador joga no time Nacional? "), 
    read(Ans), 
    atualizar_time(Ans, nacional). 

lidar_pergunta(redStar) :- 
    write("Seu jogador joga no time RedStar? "), 
    read(Ans), 
    atualizar_time(Ans, redStar).