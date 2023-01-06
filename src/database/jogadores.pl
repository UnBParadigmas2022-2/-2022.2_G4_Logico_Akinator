limpaJogadores([H|T]) :-
	retract(jogador(H, _, _, _, _, _, _)),
	limpaJogadores(T), !.
limpaJogadores([]) :- !.

%% Fatos: 

%% jogador(Nome, Selecao, Posicao, Time, Idade, Gols na Copa, Assistencias na Copa.)

%% Selecao Holandesa

jogador('Noppert',holanda,goleiro,heerenveen,28,0,0).
jogador('Dumfries',holanda,defensor,inter,26,1,2).
jogador('VanDijk',holanda,defensor,liverpool,31,0,0).
jogador('Blind',holanda,defensor,ajax,holanda,32,1,1).
jogador('Ake',holanda,defensor,manchesterCity,27,0,0).
jogador('Roon',holanda,meia,atalanta,31,1,1).
jogador('DeJong',holanda,meia,barcelona,25,1,1).
jogador('Klaassen',holanda,meia,ajax,29,1,2).
jogador('Koopmeiners',holanda,atacante,atalanta,24,0,1).
jogador('Gakpo',holanda,atacante,psv,23,3,0).
jogador('Depay',holanda,atacante,barcelona,28,1,0).


selecao('Noppert', holanda).
posicao('Noppert',goleiro).
clube('Noppert',heerenveen).
idade('Noppert',28).
golsCopa('Noppert',0).
assistenciaCopa('Noppert',0).

selecao('Dumfries', holanda).
posicao('Dumfries',defensor).
clube('Dumfries',inter).
idade('Dumfries',26).
golsCopa('Dumfries',1).
assistenciaCopa('Dumfries',2).

selecao('VanDijk', holanda).
posicao('VanDijk',defensor).
clube('VanDijk',liverpool).
idade('VanDijk',31).
golsCopa('VanDijk',0).
assistenciaCopa('VanDijk',0).

selecao('Blind', holanda).
posicao('Blind',defensor).
clube('Blind',ajax).
idade('Blind',32).
golsCopa('Blind',1).
assistenciaCopa('Blind',1).

selecao('Ake', holanda).
posicao('Ake',defensor).
clube('Ake',manchesterCity).
idade('Ake',27).
golsCopa('Ake',0).
assistenciaCopa('Ake',0).

selecao('Roon', holanda).
posicao('Roon',meia).
clube('Roon',atalanta).
idade('Roon',31).
golsCopa('Roon',1).
assistenciaCopa('Roon',1).

selecao('DeJong', holanda).
posicao('DeJong',meia).
clube('DeJong',barcelona).
idade('DeJong',25).
golsCopa('DeJong',1).
assistenciaCopa('DeJong',1).

selecao('Klaassen', holanda).
posicao('Klaassen',meia).
clube('Klaassen',ajax).
idade('Klaassen',29).
golsCopa('Klaassen',1).
assistenciaCopa('Klaassen',2).

selecao('Koopmeiners', holanda).
posicao('Koopmeiners',atacante).
clube('Koopmeiners',atalanta).
idade('Koopmeiners',24).
golsCopa('Koopmeiners',0).
assistenciaCopa('Koopmeiners',1).

selecao('Gakpo', holanda).
posicao('Gakpo',atacante).
clube('Gakpo',psv).
idade('Gakpo',23).
golsCopa('Gakpo',3).
assistenciaCopa('Gakpo',0).

selecao('Depay', holanda).
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


selecao('Pickford', inglaterra).
posicao('Pickford', goleiro).
clube('Pickford', everton).
idade('Pickford', 28).
golsCopa('Pickford', 0).
assistenciaCopa('Pickford', 0).

selecao('Maguire', inglaterra).
posicao('Maguire', defensor).
clube('Maguire', manchesterUnited).
idade('Maguire', 29).
golsCopa('Maguire', 0).
assistenciaCopa('Maguire', 1).

selecao('Stones', inglaterra).
posicao('Stones', defensor).
clube('Stones', manchesterCity).
idade('Stones', 28).
golsCopa('Stones', 0).
assistenciaCopa('Stones', 0).

selecao('Shaw', inglaterra).
'Shaw', posicao(defensor).
clube('Shaw', manchesterUnited).
idade('Shaw', 27).
golsCopa('Shaw', 0).
assistenciaCopa('Shaw', 1).

selecao('Rice', inglaterra).
'Rice', posicao(defensor).
clube('Rice', westHam).
idade('Rice', 23).
golsCopa('Rice', 0).
assistenciaCopa('Rice', 0).

selecao('Bellingham', inglaterra).
posicao('Bellingham', meia).
clube('Bellingham', borussiaDortmund).
idade('Bellingham', 19).
golsCopa('Bellingham', 1).
assistenciaCopa('Bellingham', 1).

selecao('Grealish', inglaterra).
posicao('Grealish', meia).
clube('Grealish', manchesterCity).
idade('Grealish', 27).
golsCopa('Grealish', 1).
assistenciaCopa('Grealish', 0).

selecao('Saka', inglaterra).
posicao('Saka', meia).
clube('Saka', arsenal).
idade('Saka', 21).
golsCopa('Saka', 3).
assistenciaCopa('Saka', 0).

selecao('Phoden', inglaterra).
posicao('Phoden', atacante).
clube('Phoden', manchesterCity).
idade('Phoden', 22).
golsCopa('Phoden', 1).
assistenciaCopa('Phoden', 2).

selecao('Kane', inglaterra).
'Kane', posicao(atacante).
clube('Kane', tottenham).
idade('Kane', 29).
golsCopa('Kane', 2).
assistenciaCopa('Kane', 3).

selecao('Rashford', inglaterra).
posicao('Rashford', atacante).
clube('Rashford', manchesterUnited).
idade('Rashford', 25).
golsCopa('Rashford', 3).
assistenciaCopa('Rashford', 0).


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

selecao('Martinez', argentina).
posicao('Martinez', goleiro).
clube('Martinez', astonVilla).
idade('Martinez', 30).
golsCopa('Martinez', 0).
assistenciaCopa('Martinez', 0).

selecao('Tagliafico', argentina).
posicao('Tagliafico', defensor).
clube('Tagliafico', lyon).
idade('Tagliafico', 30).
golsCopa('Tagliafico', 0).
assistenciaCopa('Tagliafico', 0).

selecao('Otamendi', argentina).
posicao('Otamendi', defensor).
clube('Otamendi', benfica).
idade('Otamendi', 34).
golsCopa('Otamendi', 0).
assistenciaCopa('Otamendi', 0).

selecao('Romero', argentina).
posicao('Romero', defensor).
clube('Romero', tottenham).
idade('Romero', 24).
golsCopa('Romero', 0).
assistenciaCopa('Romero', 0).

selecao('Molina', argentina).
posicao('Molina', defensor).
clube('Molina', atleticoDeMadrid).
idade('Molina', 24).
golsCopa('Molina', 1).
assistenciaCopa('Molina', 1).

selecao('DePaul', argentina).
posicao('DePaul', meia).
clube('DePaul', atleticoDeMadrid).
idade('DePaul', 28).
golsCopa('DePaul', 0).
assistenciaCopa('DePaul', 0).

selecao('EnzoFernandez', argentina).
posicao('EnzoFernandez', meia).
clube('EnzoFernandez', 21).
idade('EnzoFernandez', 1).
golsCopa('EnzoFernandez', 1).
assistenciaCopa('EnzoFernandez', 0).

selecao('Paredes', argentina).
posicao('Paredes', meia).
clube('Paredes', juventus).
idade('Paredes', 28).
golsCopa('Paredes', 0).
assistenciaCopa('Paredes', 0).

selecao('DiMaria', argentina).
posicao('DiMaria', atacante).
clube('DiMaria', juventus).
idade('DiMaria', 34).
golsCopa('DiMaria', 1).
assistenciaCopa('DiMaria', 1).

selecao('Messi', argentina).
posicao('Messi', atacante).
clube('Messi', psg).
idade('Messi', 35).
golsCopa('Messi', 7).
assistenciaCopa('Messi', 3).

selecao('Alvarez', argentina).
posicao('Alvarez', atacante).
clube('Alvarez', manchesterCity).
idade('Alvarez', 22).
golsCopa('Alvarez', 4).
assistenciaCopa('Alvarez', 0).


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

selecao('Lloris', franca).
posicao('Lloris', goleiro).
clube('Lloris', tottenham).
idade('Lloris', 36).
golsCopa('Lloris', 0).
assistenciaCopa('Lloris', 0).

selecao('Varane', franca).
posicao('Varane', defensor).
clube('Varane', manchesterUnited).
idade('Varane', 29).
golsCopa('Varane', 0).
assistenciaCopa('Varane', 0).

selecao('Kounde', franca).
posicao('Kounde', defensor).
clube('Kounde', barcelona).
idade('Kounde', 28).
golsCopa('Kounde', 0).
assistenciaCopa('Kounde', 0).

selecao('TheoHernandez', franca).
posicao('TheoHernandez', defensor).
clube('TheoHernandez', milan).
idade('TheoHernandez', 25).
golsCopa('TheoHernandez', 1).
assistenciaCopa('TheoHernandez', 2).

selecao('Fofana', franca).
posicao('Fofana', meia).
clube('Fofana', chelsea).
idade('Fofana', 23).
golsCopa('Fofana', 0).
assistenciaCopa('Fofana', 0).

selecao('Rabiot', franca).
posicao('Rabiot', meia).
clube('Rabiot', juventus).
idade('Rabiot', 27).
golsCopa('Rabiot', 1).
assistenciaCopa('Rabiot', 1).

selecao('Tchouameni', franca).
posicao('Tchouameni', meia).
clube('Tchouameni', realMadrid).
idade('Tchouameni', 22).
golsCopa('Tchouameni', 1).
assistenciaCopa('Tchouameni', 0).

selecao('Griezmann', franca).
posicao('Griezmann', atacante).
clube('Griezmann', atleticoDeMadrid).
idade('Griezmann', 31).
golsCopa('Griezmann', 0).
assistenciaCopa('Griezmann', 3).

selecao('Dembele', franca).
posicao('Dembele', atacante).
clube('Dembele', barcelona).
idade('Dembele', 25).
golsCopa('Dembele', 0).
assistenciaCopa('Dembele', 2).

selecao('Mbappe', franca).
posicao('Mbappe', atacante).
clube('Mbappe', psg).
idade('Mbappe', 24).
golsCopa('Mbappe', 8).
assistenciaCopa('Mbappe', 2).

selecao('Giroud', franca).
posicao('Giroud', atacante).
clube('Giroud', milan).
idade('Giroud', 36).
golsCopa('Giroud', 4).
assistenciaCopa('Giroud', 0).


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

selecao('Simon', espanha).
posicao('Simon', goleiro).
clube('Simon', athletic).
idade('Simon', 25).
golsCopa('Simon', 0).
assistenciaCopa('Simon', 0).

selecao('Laporte', espanha).
posicao('Laporte', defensor).
clube('Laporte', manchesterCity).
idade('Laporte', 28).
golsCopa('Laporte', 0).
assistenciaCopa('Laporte', 0).

selecao('Alba', espanha).
posicao('Alba', defensor).
clube('Alba', barcelona).
idade('Alba', 33).
golsCopa('Alba', 0).
assistenciaCopa('Alba', 2).

selecao('Balde', espanha).
posicao('Balde', defensor).
clube('Balde', barcelona).
idade('Balde', 19).
golsCopa('Balde', 0).
assistenciaCopa('Balde', 0).

selecao('Busquets', espanha).
posicao('Busquets', meia).
clube('Busquets', barcelona).
idade('Busquets', 34).
golsCopa('Busquets', 0).
assistenciaCopa('Busquets', 0).

selecao('Olmo', espanha).
posicao('Olmo', meia).
clube('Olmo', leipzig).
idade('Olmo', 24).
golsCopa('Olmo', 1).
assistenciaCopa('Olmo', 1).

selecao('Pedri', espanha).
posicao('Pedri', meia).
clube('Pedri', barcelona).
idade('Pedri', 20).
golsCopa('Pedri', 0).
assistenciaCopa('Pedri', 0).

selecao('Gavi', espanha).
posicao('Gavi', meia).
clube('Gavi', barcelona).
idade('Gavi', 18).
golsCopa('Gavi', 1).
assistenciaCopa('Gavi', 0).

selecao('Torres', espanha).
posicao('Torres', atacante).
clube('Torres', barcelona).
idade('Torres', 22).
golsCopa('Torres', 2).
assistenciaCopa('Torres', 0).

selecao('Asensio', espanha).
posicao('Asensio', atacante).
clube('Asensio', realMadrid).
idade('Asensio', 26).
golsCopa('Asensio', 1).
assistenciaCopa('Asensio', 0).

selecao('Morata', espanha).
posicao('Morata', atacante).
clube('Morata', atleticoDeMadrid).
idade('Morata', 30).
golsCopa('Morata', 3).
assistenciaCopa('Morata', 1).


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

selecao('Courtois', belgica).
posicao('Courtois', goleiro).
clube('Courtois', realMadrid).
idade('Courtois', 30).
golsCopa('Courtois', 0).
assistenciaCopa('Courtois', 0).

selecao('Vertonghen', belgica).
posicao('Vertonghen', defensor).
clube('Vertonghen', anderlecht).
idade('Vertonghen', 35).
golsCopa('Vertonghen', 0).
assistenciaCopa('Vertonghen', 0).

selecao('Meunier', belgica).
posicao('Meunier', defensor).
clube('Meunier', borussiaDortmund).
idade('Meunier', 31).
golsCopa('Meunier', 0).
assistenciaCopa('Meunier', 0).

selecao('Castagne', belgica).
posicao('Castagne', defensor).
clube('Castagne', leicester).
idade('Castagne', 34).
golsCopa('Castagne', 0).
assistenciaCopa('Castagne', 0).

selecao('Tielemans', belgica).
posicao('Tielemans', meia).
clube('Tielemans', leicester).
idade('Tielemans', 24).
golsCopa('Tielemans', 0).
assistenciaCopa('Tielemans', 0).

selecao('Witsel', belgica).
posicao('Witsel', meia).
clube('Witsel', atleticoDeMadrid).
idade('Witsel', 20).
golsCopa('Witsel', 0).
assistenciaCopa('Witsel', 0).

selecao('DeBruyne', belgica).
posicao('DeBruyne', meia).
clube('DeBruyne', manchesterCity).
idade('DeBruyne', 18).
golsCopa('DeBruyne', 0).
assistenciaCopa('DeBruyne', 0).

selecao('Hazard', belgica).
posicao('Hazard', atacante).
clube('Hazard', realMadrid).
idade('Hazard', 31).
golsCopa('Hazard', 0).
assistenciaCopa('Hazard', 0).

selecao('Trossard', belgica).
posicao('Trossard', atacante).
clube('Trossard', brighton).
idade('Trossard', 28).
golsCopa('Trossard', 0).
assistenciaCopa('Trossard', 0).

selecao('Lukaku', belgica).
posicao('Lukaku', atacante).
clube('Lukaku', inter).
idade('Lukaku', 29).
golsCopa('Lukaku', 0).
assistenciaCopa('Lukaku', 0).

selecao('Batshuayi', belgica).
posicao('Batshuayi', atacante).
clube('Batshuayi', fenerbahce).
idade('Batshuayi', 29).
golsCopa('Batshuayi', 1).
assistenciaCopa('Batshuayi', 0).

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

selecao('Alisson', brasil).
posicao('Alisson', goleiro).
clube('Alisson', liverpool).
idade('Alisson', 30).
golsCopa('Alisson', 0).
assistenciaCopa('Alisson', 0).

selecao('Danilo', brasil).
posicao('Danilo', defensor).
clube('Danilo', juventus).
idade('Danilo', 31).
golsCopa('Danilo', 0).
assistenciaCopa('Danilo', 0).

selecao('Marquinhos', brasil).
posicao('Marquinhos', defensor).
clube('Marquinhos', psg).
idade('Marquinhos', 28).
golsCopa('Marquinhos', 0).
assistenciaCopa('Marquinhos', 0).

selecao('ThiagoSilva', brasil).
posicao('ThiagoSilva', defensor).
clube('ThiagoSilva', chelsea).
idade('ThiagoSilva', 38).
golsCopa('ThiagoSilva', 0).
assistenciaCopa('ThiagoSilva', 0).

selecao('Alex', brasil).
posicao('Alex', defensor).
clube('Alex', juventus).
idade('Alex', 31).
golsCopa('Alex', 0).
assistenciaCopa('Alex', 0).

selecao('Casemiro', brasil).
posicao('Casemiro', meia).
clube('Casemiro', manchesterUnited).
idade('Casemiro', 30).
golsCopa('Casemiro', 1).
assistenciaCopa('Casemiro', 1).

selecao('Casemiro', brasil).
posicao('Casemiro', meia).
clube('Casemiro', westHam).
idade('Casemiro', 25).
golsCopa('Casemiro', 1).
assistenciaCopa('Casemiro', 1).

selecao('Neymar', brasil).
posicao('Neymar', atacante).
clube('Neymar', psg).
idade('Neymar', 30).
golsCopa('Neymar', 2).
assistenciaCopa('Neymar', 1).

selecao('Raphinha', brasil).
posicao('Raphinha', atacante).
clube('Raphinha', barcelona).
idade('Raphinha', 26).
golsCopa('Raphinha', 0).
assistenciaCopa('Raphinha', 0).

selecao('ViniciusJR', brasil).
posicao('ViniciusJR', atacante).
clube('ViniciusJR', realMadrid).
idade('ViniciusJR', 22).
golsCopa('ViniciusJR', 1).
assistenciaCopa('ViniciusJR', 2).

selecao('Richarlison', brasil).
posicao('Richarlison', atacante).
clube('Richarlison', tottenham).
idade('Richarlison', 25).
golsCopa('Richarlison', 3).
assistenciaCopa('Richarlison', 0).


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

selecao('Costa', portugal).
posicao('Costa', goleiro).
clube('Costa', porto).
idade('Costa', 23).
golsCopa('Costa', 0).
assistenciaCopa('Costa', 0).

selecao('Pepe', portugal).
posicao('Pepe', defensor).
clube('Pepe', porto).
idade('Pepe', 39).
golsCopa('Pepe', 1).
assistenciaCopa('Pepe', 0).

selecao('RubenDias', portugal).
posicao('RubenDias', defensor).
clube('RubenDias', manchesterCity).
idade('RubenDias', 25).
golsCopa('RubenDias', 0).
assistenciaCopa('RubenDias', 0).

selecao('Guerreiro', portugal).
posicao('Guerreiro', defensor).
clube('Guerreiro', borussiaDortmund).
idade('Guerreiro', 29).
golsCopa('Guerreiro', 1).
assistenciaCopa('Guerreiro', 2).

selecao('Cancelo', portugal).
posicao('Cancelo', defensor).
clube('Cancelo', manchesterCity).
idade('Cancelo', 28).
golsCopa('Cancelo', 1).
assistenciaCopa('Cancelo', 1).

selecao('BernardoSilva', portugal).
posicao('BernardoSilva', meia).
clube('BernardoSilva', manchesterCity).
idade('BernardoSilva', 28).
golsCopa('BernardoSilva', 1).
assistenciaCopa('BernardoSilva', 1).

selecao('BrunoFernandes', portugal).
posicao('BrunoFernandes', meia).
clube('BrunoFernandes', manchesterUnited).
idade('BrunoFernandes', 28).
golsCopa('BrunoFernandes', 2).
assistenciaCopa('BrunoFernandes', 3).

selecao('Vitinha', portugal).
posicao('Vitinha', atacante).
clube('Vitinha', psg).
idade('Vitinha', 22).
golsCopa('Vitinha', 0).
assistenciaCopa('Vitinha', 0).

selecao('JoaoFelix', portugal).
posicao('JoaoFelix', atacante).
clube('JoaoFelix', atleticoDeMadrid).
idade('JoaoFelix', 23).
golsCopa('JoaoFelix', 1).
assistenciaCopa('JoaoFelix', 2).

selecao('Leao', portugal).
posicao('Leao', atacante).
clube('Leao', milan).
idade('Leao', 23).
golsCopa('Leao', 2).
assistenciaCopa('Leao', 0).

selecao('CristianoRonaldo', portugal).
posicao('CristianoRonaldo', atacante).
clube('CristianoRonaldo', alNassr).
idade('CristianoRonaldo', 37).
golsCopa('CristianoRonaldo', 1).
assistenciaCopa('CristianoRonaldo', 0).

%% Selecao Japonesa

jogador('Gonda',japao,goleiro,shimizuSPulse,33,0,0).
jogador('Nagatomo',japao,defensor,tokyo,36,0,0).
jogador('Yoshida',japao,defensor,schalke,34,0,1).
jogador('Itakura',japao,defensor,gladbach,25,0,1).
jogador('Tomiyasu',japao,defensor,arsenal,24,0,0).
jogador('Endo',japao,meia,stuttgart,29,0,0).
jogador('Mitoma',japao,meia,brighton,25,0,1).
jogador('Kamada',japao,meia,frankfurt,25,0,0).
jogador('Doan',japao,atacante,freiburg,24,2,0).
jogador('JunyaIto',japao,atacante,reims,29,0,1).
jogador('Asano',japao,atacante,bochum,28,1,0).

%% Selecao Alema

jogador('Neuer',alemanha,goleiro,bayern,36,0,0).
jogador('Rüdiger',alemanha,defensor,realMadrid,29,0,0).
jogador('Raum',alemanha,defensor,leipzig,24,0,1).
jogador('Süle',alemanha,defensor,borussiaDortmund,27,0,0).
jogador('Kimmich',alemanha,meia,bayern,27,0,1).
jogador('Havertz',alemanha,meia,chelsea,23,2,0).
jogador('Füllkrug',alemanha,atacante,werderBremen,29,2,1).
jogador('Gnabry',alemanha,atacante,bayern,27,1,2).
jogador('Müller',alemanha,atacante,bayern,33,0,0).
jogador('Musiala',alemanha,atacante,bayern,19,0,1).
jogador('Sané',alemanha,atacante,bayern,26,0,1).

%% Selecao Costarriquenha

jogador('Navas',costaRica,goleiro,psg,36,0,0).
jogador('Vargas',costaRica,defensor,millonarios,27,1,0).
jogador('Fuller',costaRica,defensor,herediano,28,1,0).
jogador('Duarte',costaRica,defensor,levante,33,0,0).
jogador('Oviedo',costaRica,defensor,saltLake,32,0,0).
jogador('Waston',costaRica,defensor,saprissa,35,0,0).
jogador('Matarrita',costaRica,defensor,cincinnati,28,0,0).
jogador('Borges',costaRica,meia,alajuelense,34,0,0).
jogador('Tejeda',costaRica,meia,herediano,30,1,1).
jogador('Aguilera',costaRica,meia,alajuelense,19,0,0).
jogador('Bennette',costaRica,atacante,sunderland,18,0,0).

%% Selecao Marroquina

jogador('Bounou',marrocos,goleiro,sevilla,31,0,0).
jogador('Hakimi',marrocos,defensor,psg,24,0,1).
jogador('Mazraoui',marrocos,defensor,bayern,25,1,0).
jogador('Aguerd',marrocos,defensor,westHam,26,0,0).
jogador('Saïss',marrocos,defensor,besiktas,32,1,0).
jogador('Yamiq',marrocos,defensor,valladolid,30,0,0).
jogador('Dari',marrocos,defensor,brest,23,1,0).
jogador('Attiyat-Allah',marrocos,defensor,wydad,27,0,1).
jogador('Ziyech',marrocos,meia,chelsea,29,1,1).
jogador('Sabiri',marrocos,meia,sampdoria,26,0,1).
jogador('En-Nesyri',marrocos,atacante,sevilla,25,2,0).

%% Selecao Croata

jogador('Livakovic',croacia,goleiro,dZagreb,27,0,0).
jogador('Lovren',croacia,defensor,lyon,33,0,1).
jogador('Sosa',croacia,defensor,stuttgart,24,0,0).
jogador('Gvardiol',croacia,defensor,leipzig,20,1,0).
jogador('Juranovic',croacia,defensor,celtic,27,0,1).
jogador('Perisic',croacia,meia,tottenham,33,1,3).
jogador('Kovacic',croacia,meia,chelsea,28,0,0).
jogador('Modric',croacia,meia,realMadrid,37,0,0).
jogador('Livaja',croacia,atacante,hajdukSplit,29,1,1).
jogador('Petkovic',croacia,atacante,dZagreb,28,1,0).
jogador('Orsic',croacia,atacante,dZagreb,30,1,2).

%% Selecao Canadense

jogador('Borjan',canada,goleiro,redStar,35,0,0).
jogador('Johnston',canada,defensor,celtic,24,0,0).
jogador('Adekugbe',canada,defensor,hataysport,27,0,0).
jogador('Miller',canada,defensor,montreal,25,0,0).
jogador('Vitória',canada,defensor,chaves,35,0,0).
jogador('Davies',canada,defensor,bayern,22,1,0).
jogador('Laryea',canada,defensor,toronto,27,0,0).
jogador('Hoilett',canada,meia,reading,32,0,0).
jogador('Hutchinson',canada,meia,besiktas,39,0,0).
jogador('Osorio',canada,meia,toronto,30,0,0).
jogador('Buchanan',canada,atacante,brugge,23,0,1).

%% Selecao Suiça

jogador('Sommer',suica,goleiro,gladbach,34,0,0).
jogador('Akanji',suica,defensor,manchesterCity,27,1,0).
jogador('Rodríguez',suica,defensor,torino,30,0,0).
jogador('Widmer',suica,defensor,mainz,29,0,0).
jogador('Fernandes',suica,meia,mainz,26,0,0).
jogador('Freuler',suica,meia,nottmForest,30,1,0).
jogador('Xhaka',suica,meia,arsenal,30,0,0).
jogador('Sow',suica,meia,frankfurt,25,0,0).
jogador('Vargas',suica,meia,augsburgo,24,0,0).
jogador('Embolo',suica,atacante,monaco,25,2,0).
jogador('Shaqiri',suica,meia,chicago,31,1,1).

%% Selecao Camaronesa
%% Sem dados

%% Selecao Sérvia

jogador('Milinkovic-Savic',servia,goleiro,torino,25,0,0).
jogador('Pavlovic',servia,defensor,salzburg,21,1,0).
jogador('Milenkovic',servia,defensor,fiorentina,25,0,0).
jogador('Vlahovic',servia,defensor,werderBremen,27,1,0).
jogador('Maksimovic',servia,meia,getafe,27,0,0).
jogador('Radonjic',servia,meia,torino,26,1,0).
jogador('Zivkovic',servia,atacante,paok,26,0,2).
jogador('Milinkovic-Savic',servia,meia,lazio,27,1,0).
jogador('Djuricic',servia,meia,sampdoria,30,0,0).
jogador('Mitrovic',servia,atacante,fulham,28,2,0).
jogador('Tadic',servia,atacante,ajax,34,0,2).

%% Selecao Sul-Coreana

jogador('Seung-Gyu',coreiaDoSul,goleiro,alShabab,32,0,0).
jogador('Jin-Su',coreiaDoSul,defensor,jeonbukMotors,30,0,1).
jogador('Min-Jae',coreiaDoSul,defensor,napoli,26,0,0).
jogador('Moon-Hwan',coreiaDoSul,defensor,jeonbukMotors,27,0,0).
jogador('Young-Gwon',coreiaDoSul,defensor,ulsan,32,1,0).
jogador('Woo-Young',coreiaDoSul,meia,alSadd,33,0,0).
jogador('Seung-Ho',coreiaDoSul,meia,jeonbukMotors,25,1,0).
jogador('Kang-In',coreiaDoSul,meia,mallorca,21,0,1).
jogador('Heung-MinSon',coreiaDoSul,atacante,tottenham,30,0,1).
jogador('Gue-Sung',coreiaDoSul,atacante,jeonbukMotors,24,2,0).
jogador('Hee-Chan',coreiaDoSul,atacante,wolves,26,1,0).

%% Selecao Uruguaiana

jogador('Rochet',uruguai,goleiro,nacional,29,0,0).
jogador('Giménez',uruguai,defensor,atleticoDeMadrid,27,0,0).
jogador('Varela',uruguai,defensor,flamengo,29,0,0).
jogador('Bentancur',uruguai,meia,tottenham,25,0,0).
jogador('delaCruz',uruguai,meia,riverplate,25,0,0).
jogador('Pellistri',uruguai,meia,manchesterUnited,21,1,0).
jogador('deArrascaeta',uruguai,meia,flamengo,28,2,0).
jogador('Valverde',uruguai,meia,realMadrid,24,0,0).
jogador('Suárez',uruguai,atacante,gremio,35,0,1).
jogador('Cavani',uruguai,atacante,valencia,35,0,0).
jogador('DarwinNúñez',uruguai,liverpool,ajax,23,0,0).

selecao('Rochet', uruguai).
posicao('Rochet', goleiro).
clube('Rochet', nacional).
idade('Rochet', 29).
golsCopa('Rochet', 0).
assistenciaCopa('Rochet', 0).

selecao('Giménez', uruguai).
posicao('Giménez', defensor).
clube('Giménez', atleticoDeMadrid).
idade('Giménez', 27).
golsCopa('Giménez', 0).
assistenciaCopa('Giménez', 0).

selecao('Varela', uruguai).
posicao('Varela', defensor).
clube('Varela', flamengo).
idade('Varela', 29).
golsCopa('Varela', 0).
assistenciaCopa('Varela', 0).

selecao('Bentancur', uruguai).
posicao('Bentancur', meia).
clube('Bentancur', tottenham).
idade('Bentancur', 25).
golsCopa('Bentancur', 0).
assistenciaCopa('Bentancur', 0).

selecao('delaCruz', uruguai).
posicao('delaCruz', meia).
clube('delaCruz', riverplate).
idade('delaCruz', 25).
golsCopa('delaCruz', 0).
assistenciaCopa('delaCruz', 0).

selecao('Pellistri', uruguai).
posicao('Pellistri', meia).
clube('Pellistri', manchesterUnited).
idade('Pellistri', 21).
golsCopa('Pellistri', 1).
assistenciaCopa('Pellistri', 0).

selecao('deArrascaeta', uruguai).
posicao('deArrascaeta', meia).
clube('deArrascaeta', flamengo).
idade('deArrascaeta', 28).
golsCopa('deArrascaeta', 2).
assistenciaCopa('deArrascaeta', 0).

selecao('Suárez', uruguai).
posicao('Suárez', atacante).
clube('Suárez', gremio).
idade('Suárez', 35).
golsCopa('Suárez', 0).
assistenciaCopa('Suárez', 1).

selecao('Cavani', uruguai).
posicao('Cavani', atacante).
clube('Cavani', valencia).
idade('Cavani', 35).
golsCopa('Cavani', 0).
assistenciaCopa('Cavani', 0).

selecao('DarwinNúñez', uruguai).
posicao('DarwinNúñez', atacante).
clube('DarwinNúñez', valencia).
idade('DarwinNúñez', 23).
golsCopa('DarwinNúñez', 0).
assistenciaCopa('DarwinNúñez', 0).



%% Selecao Ganesa

jogador('AtiZigi',gana,goleiro,stGallen,26,0,0).
jogador('Lamptey',gana,defensor,brighton,22,0,0).
jogador('Salisu',gana,defensor,southampton,23,1,0).
jogador('RahmanBaba',gana,defensor,reading,28,0,0).
jogador('Amartey',gana,defensor,leicester,28,0,0).
jogador('Partey',gana,meia,arsenal,29,0,0).
jogador('Kudus',gana,meia,ajax,26,2,0).
jogador('AbdulSamed',gana,meia,lens,22,0,0).
jogador('JordanAyew',gana,atacante,crystalPalace,31,0,1).
jogador('AndréAyew',gana,atacante,alSadd,33,1,0).
jogador('Bukari',gana,atacante,redStar,24,1,0).

selecao('AtiZigi', gana).
posicao('AtiZigi', goleiro).
clube('AtiZigi', stGallen).
idade('AtiZigi', 26).
golsCopa('AtiZigi', 0).
assistenciaCopa('AtiZigi', 0).

selecao('Lamptey', gana).
posicao('Lamptey', defensor).
clube('Lamptey', brighton).
idade('Lamptey', 22).
golsCopa('Lamptey', 0).
assistenciaCopa('Lamptey', 0).

selecao('Salisu', gana).
posicao('Salisu', defensor).
clube('Salisu', southampton).
idade('Salisu', 23).
golsCopa('Salisu', 1).
assistenciaCopa('Salisu', 0).

selecao('RahmanBaba', gana).
posicao('RahmanBaba', defensor).
clube('RahmanBaba', reading).
idade('RahmanBaba', 28).
golsCopa('RahmanBaba', 0).
assistenciaCopa('RahmanBaba', 0).

selecao('Amartey', gana).
posicao('Amartey', defensor).
clube('Amartey', leicester).
idade('Amartey', 28).
golsCopa('Amartey', 0).
assistenciaCopa('Amartey', 0).

selecao('Partey', gana).
posicao('Partey', meia).
clube('Partey', arsenal).
idade('Partey', 29).
golsCopa('Partey', 0).
assistenciaCopa('Partey', 0).

selecao('Kudus', gana).
posicao('Kudus', meia).
clube('Kudus', ajax).
idade('Kudus', 26).
golsCopa('Kudus', 2).
assistenciaCopa('Kudus', 0).

selecao('AbdulSamed', gana).
posicao('AbdulSamed', meia).
clube('AbdulSamed', lens).
idade('AbdulSamed', 22).
golsCopa('AbdulSamed', 0).
assistenciaCopa('AbdulSamed', 0).

selecao('JordanAyew', gana).
posicao('JordanAyew', atacante).
clube('JordanAyew', crystalPalace).
idade('JordanAyew', 31).
golsCopa('JordanAyew', 0).
assistenciaCopa('JordanAyew', 1).

selecao('AndréAyew', gana).
posicao('AndréAyew', atacante).
clube('AndréAyew', alSadd).
idade('AndréAyew', 33).
golsCopa('AndréAyew', 1).
assistenciaCopa('AndréAyew', 0).

selecao('Bukari', gana).
posicao('Bukari', atacante).
clube('Bukari', redStar).
idade('Bukari', 24).
golsCopa('Bukari', 1).
assistenciaCopa('Bukari', 0).