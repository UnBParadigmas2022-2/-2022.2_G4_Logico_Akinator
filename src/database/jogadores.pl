limpaJogadores([H|T]) :-
	retract(jogador(H, _, _, _, _, _, _)),
	limpaJogadores(T), !.
limpaJogadores([]) :- !.

%% Fatos: 

%% jogador(Nome, Selecao, Posicao, Time, Idade, Gols na Copa, Assistencias na Copa.)

%% Selecao Holandesa

jogador('Noppert').
selecao('Noppert', holanda).
posicao('Noppert',goleiro).
clube('Noppert',heerenveen).
idade('Noppert',28).
golsCopa('Noppert',0).
assistenciaCopa('Noppert',0).

jogador('Dumfries').
selecao('Noppert', holanda).
posicao('Dumfries',defensor).
clube('Dumfries',inter).
idade('Dumfries',26).
golsCopa('Dumfries',1).
assistenciaCopa('Dumfries',2).

jogador('VanDijk').
selecao('Noppert', holanda).
posicao('VanDijk',defensor).
clube('VanDijk',liverpool).
idade('VanDijk',31).
golsCopa('VanDijk',0).
assistenciaCopa('VanDijk',0).

jogador('Blind').
selecao('Noppert', holanda).
posicao('Blind',defensor).
clube('Blind',ajax).
idade('Blind',32).
golsCopa('Blind',1).
assistenciaCopa('Blind',1).

jogador('Ake').
selecao('Noppert', holanda).
posicao('Ake',defensor).
clube('Ake',manchesterCity).
idade('Ake',27).
golsCopa('Ake',0).
assistenciaCopa('Ake',0).

jogador('Roon').
selecao('Noppert', holanda).
posicao('Roon',meia).
clube('Roon',atalanta).
idade('Roon',31).
golsCopa('Roon',1).
assistenciaCopa('Roon',1).

jogador('DeJong').
selecao('Noppert', holanda).
posicao('DeJong',meia).
clube('DeJong',barcelona).
idade('DeJong',25).
golsCopa('DeJong',1).
assistenciaCopa('DeJong',1).

jogador('Klaassen').
selecao('Noppert', holanda).
posicao('Klaassen',meia).
clube('Klaassen',ajax).
idade('Klaassen',29).
golsCopa('Klaassen',1).
assistenciaCopa('Klaassen',2).

jogador('Koopmeiners').
selecao('Noppert', holanda).
posicao('Koopmeiners',atacante).
clube('Koopmeiners',atalanta).
idade('Koopmeiners',24).
golsCopa('Koopmeiners',0).
assistenciaCopa('Koopmeiners',1).

jogador('Gakpo').
selecao('Noppert', holanda).
posicao('Gakpo',atacante).
clube('Gakpo',psv).
idade('Gakpo',23).
golsCopa('Gakpo',3).
assistenciaCopa('Gakpo',0).

jogador('Depay').
selecao('Noppert', holanda).
posicao('Depay',atacante).
clube('Depay',barcelona).
idade('Depay',28).
golsCopa('Depay',1).
assistenciaCopa('Depay',0).


%% Selecao Inglesa

jogador('Pickford',inglaterra,goleiro,everton,28,0,0).
jogador('Maguire',inglaterra,defensor,manchesterUnited,29,0,1).
jogador('Stones',inglaterra,defensor,manchesterCity,28,0,0).
jogador('Shaw',inglaterra,defensor,manchesterUnited,27,0,1).
jogador('Rice',inglaterra,defensor,westHam,23,0,0).
jogador('Bellingham',inglaterra,meia,borussiaDortmund,19,1,1).
jogador('Grealish',inglaterra,meia,manchesterCity,27,1,0).
jogador('Saka',inglaterra,meia,arsenal,21,3,0).
jogador('Phoden',inglaterra,atacante,manchesterCity,22,1,2).
jogador('Kane',inglaterra,atacante,tottenham,29,2,3).
jogador('Rashford',inglaterra,atacante,manchesterUnited,25,3,0).

%% Selecao Argentina

jogador('Martinez',argentina,goleiro,astonVilla,30,0,0).
jogador('Tagliafico',argentina,defensor,lyon,30,0,0).
jogador('Otamendi',argentina,defensor,benfica,34,0,0).
jogador('Romero',argentina,defensor,tottenham,24,0,0).
jogador('Molina',argentina,defensor,atleticoDeMadrid,24,1,1).
jogador('DePaul',argentina,meia,atleticoDeMadrid,28,0,0).
jogador('EnzoFernandez',argentina,meia,21,1,1).
jogador('Paredes',argentina,meia,juventus,28,0,0).
jogador('DiMaria',argentina,atacante,juventus,34,1,1).
jogador('Messi',argentina,atacante,psg,35,7,3).
jogador('Alvarez',argentina,atacante,manchesterCity,22,4,0).

%% Selecao Francesa

jogador('Lloris',franca,goleiro,tottenham,36,0,0).
jogador('Varane',franca,defensor,manchesterUnited,29,0,0).
jogador('Kounde',franca,defensor,barcelona,28,0,0).
jogador('TheoHernandez',franca,defensor,milan,25,1,2).
jogador('Fofana',franca,meia,chelsea,23,0,0).
jogador('Rabiot',franca,meia,juventus,27,1,1).
jogador('Tchouameni',franca,meia,realMadrid,22,1,0).
jogador('Griezmann',franca,atacante,atleticoDeMadrid,31,0,3).
jogador('Dembele',franca,atacante,barcelona,25,0,2).
jogador('Mbappe',franca,atacante,psg,24,8,2).
jogador('Giroud',franca,atacante,milan,36,4,0).

%% Selecao Espanhola

jogador('Simon',espanha,goleiro,athletic,25,0,0).
jogador('Laporte',espanha,defensor,manchesterCity,28,0,0).
jogador('Alba',espanha,defensor,barcelona,33,0,2).
jogador('Balde',espanha,defensor,barcelona,19,0,0).
jogador('Busquets',espanha,meia,barcelona,34,0,0).
jogador('Olmo',espanha,meia,leipzig,24,1,1).
jogador('Pedri',espanha,meia,barcelona,20,0,0).
jogador('Gavi',espanha,meia,barcelona,18,1,0).
jogador('Torres',espanha,atacante,barcelona,22,2,0).
jogador('Asensio',espanha,atacante,realMadrid,26,1,0).
jogador('Morata',espanha,atacante,atleticoDeMadrid,30,3,1).

%% Selecao Belga

jogador('Courtois',belgica,goleiro,realMadrid,30,0,0).
jogador('Vertonghen',belgica,defensor,anderlecht,35,0,0).
jogador('Meunier',belgica,defensor,borussiaDortmund,31,0,0).
jogador('Castagne',belgica,defensor,leicester,34,0,0).
jogador('Tielemans',belgica,meia,leicester,24,0,0).
jogador('Witsel',belgica,meia,atleticoDeMadrid,20,0,0).
jogador('DeBruyne',belgica,meia,manchesterCity,18,0,0).
jogador('Hazard',belgica,atacante,realMadrid,31,0,0).
jogador('Trossard',belgica,atacante,brighton,28,0,0).
jogador('Lukaku',belgica,atacante,inter,29,0,0).
jogador('Batshuayi',belgica,atacante,fenerbahce,29,1,0).

%% Selecao Brasileira

jogador('Alisson',brasil,goleiro,liverpool,30,0,0).
jogador('Danilo',brasil,defensor,juventus,31,0,0).
jogador('Marquinhos',brasil,defensor,psg,28,0,0).
jogador('ThiagoSilva',brasil,defensor,chelsea,38,0,0).
jogador('Alex',brasil,defensor,juventus,31,0,0).
jogador('Casemiro',brasil,meia,manchesterUnited,30,1,1).
jogador('Paqueta',brasil,meia,westHam,inglaterra,25,1,1).
jogador('Neymar',brasil,atacante,psg,30,2,1).
jogador('Raphinha',brasil,atacante,barcelona,26,0,0).
jogador('ViniciusJR',brasil,atacante,realMadrid,22,1,2).
jogador('Richarlison',brasil,atacante,tottenham,25,3,0).

%% Selecao Portuguesa

jogador('Costa',portugal,goleiro,porto,23,0,0).
jogador('Pepe',portugal,defensor,porto,39,1,0).
jogador('RubenDias',portugal,defensor,manchesterCity,25,0,0).
jogador('Guerreiro',portugal,defensor,borussiaDortmund,29,1,2).
jogador('Cancelo',portugal,defensor,manchesterCity,28,0,0).
jogador('BernardoSilva',portugal,meia,manchesterCity,28,1,1).
jogador('BrunoFernandes',portugal,meia,manchesterUnited,28,2,3).
jogador('Vitinha',portugal,atacante,psg,22,0,0).
jogador('JoaoFelix',portugal,atacante,atleticoDeMadrid,23,1,2).
jogador('Leao',portugal,atacante,milan,23,2,0).
jogador('CristianoRonaldo',portugal,atacante,alNassr,37,1,0).