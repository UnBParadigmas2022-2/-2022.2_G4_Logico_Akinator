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

selecao('Gonda', japao).
posicao('Gonda', goleiro).
clube('Gonda', shimizuSPulse).
idade('Gonda', 33).
golsCopa('Gonda', 0).
assistenciaCopa('Gonda', 0).

selecao('Nagatomo', japao).
posicao('Nagatomo', defensor).
clube('Nagatomo', tokyo).
idade('Nagatomo', 36).
golsCopa('Nagatomo', 0).
assistenciaCopa('Nagatomo', 0).

selecao('Yoshida', japao).
posicao('Yoshida', defensor).
clube('Yoshida', schalke).
idade('Yoshida', 34).
golsCopa('Yoshida', 0).
assistenciaCopa('Yoshida', 1).

selecao('Itakura', japao).
posicao('Itakura', defensor).
clube('Itakura', gladbach).
idade('Itakura', 25).
golsCopa('Itakura', 0).
assistenciaCopa('Itakura', 1).

selecao('Tomiyasu', japao).
posicao('Tomiyasu', defensor).
clube('Tomiyasu', arsenal).
idade('Tomiyasu', 24).
golsCopa('Tomiyasu', 0).
assistenciaCopa('Tomiyasu', 0).

selecao('Endo', japao).
posicao('Endo', meia).
clube('Endo', stuttgart).
idade('Endo', 29).
golsCopa('Endo', 0).
assistenciaCopa('Endo', 0).

selecao('Mitoma', japao).
posicao('Mitoma', meia).
clube('Mitoma', brighton).
idade('Mitoma', 25).
golsCopa('Mitoma', 0).
assistenciaCopa('Mitoma', 1).

selecao('Kamada', japao).
posicao('Kamada', meia).
clube('Kamada', frankfurt).
idade('Kamada', 25).
golsCopa('Kamada', 0).
assistenciaCopa('Kamada', 0).

selecao('Doan', japao).
posicao('Doan', atacante).
clube('Doan', freiburg).
idade('Doan', 24).
golsCopa('Doan', 2).
assistenciaCopa('Doan', 0).

selecao('JunyaIto', japao).
posicao('JunyaIto', atacante).
clube('JunyaIto', reims).
idade('JunyaIto', 29).
golsCopa('JunyaIto', 0).
assistenciaCopa('JunyaIto', 1).

selecao('Asano', japao).
posicao('Asano', atacante).
clube('Asano', bochum).
idade('Asano', 28).
golsCopa('Asano', 1).
assistenciaCopa('Asano', 0).


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

selecao('Neuer', alemanha).
posicao('Neuer', goleiro).
clube('Neuer', bayern).
idade('Neuer', 36).
golsCopa('Neuer', 0).
assistenciaCopa('Neuer', 0).

selecao('Rüdiger', alemanha).
posicao('Rüdiger', defensor).
clube('Rüdiger', realMadrid).
idade('Rüdiger', 29).
golsCopa('Rüdiger', 0).
assistenciaCopa('Rüdiger', 0).

selecao('Raum', alemanha).
posicao('Raum', defensor).
clube('Raum', leipzig).
idade('Raum', 24).
golsCopa('Raum', 0).
assistenciaCopa('Raum', 1).

selecao('Süle', alemanha).
posicao('Süle', defensor).
clube('Süle', borussiaDortmund).
idade('Süle', 27).
golsCopa('Süle', 0).
assistenciaCopa('Süle', 0).

selecao('Kimmich', alemanha).
posicao('Kimmich', meia).
clube('Kimmich', bayern).
idade('Kimmich', 27).
golsCopa('Kimmich', 0).
assistenciaCopa('Kimmich', 1).

selecao('Havertz', alemanha).
posicao('Havertz', meia).
clube('Havertz', chelsea).
idade('Havertz', 23).
golsCopa('Havertz', 2).
assistenciaCopa('Havertz', 0).

selecao('Füllkrug', alemanha).
posicao('Füllkrug', atacante).
clube('Füllkrug', werderBremen).
idade('Füllkrug', 29).
golsCopa('Füllkrug', 2).
assistenciaCopa('Füllkrug', 1).

selecao('Gnabry', alemanha).
posicao('Gnabry', atacante).
clube('Gnabry', bayern).
idade('Gnabry', 27).
golsCopa('Gnabry', 1).
assistenciaCopa('Gnabry', 2).

selecao('Müller', alemanha).
posicao('Müller', atacante).
clube('Müller', bayern).
idade('Müller', 33).
golsCopa('Müller', 0).
assistenciaCopa('Müller', 0).

selecao('Musiala', alemanha).
posicao('Musiala', atacante).
clube('Musiala', bayern).
idade('Musiala', 19).
golsCopa('Musiala', 0).
assistenciaCopa('Musiala', 1).

selecao('Sané', alemanha).
posicao('Sané', atacante).
clube('Sané', bayern).
idade('Sané', 26).
golsCopa('Sané', 0).
assistenciaCopa('Sané', 1).


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

selecao('Navas', costaRica).
posicao('Navas', goleiro).
clube('Navas', psg).
idade('Navas', 36).
golsCopa('Navas', 0).
assistenciaCopa('Navas', 0).

selecao('Vargas', costaRica).
posicao('Vargas', defensor).
clube('Vargas', millonarios).
idade('Vargas', 27).
golsCopa('Vargas', 1).
assistenciaCopa('Vargas', 0).

selecao('Fuller', costaRica).
posicao('Fuller', defensor).
clube('Fuller', herediano).
idade('Fuller', 28).
golsCopa('Fuller', 1).
assistenciaCopa('Fuller', 0).

selecao('Duarte', costaRica).
posicao('Duarte', defensor).
clube('Duarte', levante).
idade('Duarte', 33).
golsCopa('Duarte', 0).
assistenciaCopa('Duarte', 0).

selecao('Oviedo', costaRica).
posicao('Oviedo', defensor).
clube('Oviedo', saltLake).
idade('Oviedo', 32).
golsCopa('Oviedo', 0).
assistenciaCopa('Oviedo', 0).

selecao('Waston', costaRica).
posicao('Waston', defensor).
clube('Waston', saprissa).
idade('Waston', 35).
golsCopa('Waston', 0).
assistenciaCopa('Waston', 0).

selecao('Matarrita', costaRica).
posicao('Matarrita', defensor).
clube('Matarrita', cincinnati).
idade('Matarrita', 34).
golsCopa('Matarrita', 0).
assistenciaCopa('Matarrita', 0).

selecao('Borges', costaRica).
posicao('Borges', meia).
clube('Borges', alajuelense).
idade('Borges', 30).
golsCopa('Borges', 1).
assistenciaCopa('Borges', 1).

selecao('Tejeda', costaRica).
posicao('Tejeda', meia).
clube('Tejeda', herediano).
idade('Tejeda', 33).
golsCopa('Tejeda', 0).
assistenciaCopa('Tejeda', 0).

selecao('Aguilera', costaRica).
posicao('Aguilera', meia).
clube('Aguilera', alajuelense).
idade('Aguilera', 19).
golsCopa('Aguilera', 0).
assistenciaCopa('Aguilera', 0).

selecao('Bennette', costaRica).
posicao('Bennette', atacante).
clube('Bennette', sunderland).
idade('Bennette', 18).
golsCopa('Bennette', 0).
assistenciaCopa('Bennette', 0).


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

selecao('Bounou', marrocos).
posicao('Bounou', defensor).
clube('Bounou', sevilla).
idade('Bounou', 31).
golsCopa('Bounou', 0).
assistenciaCopa('Bounou', 0).

selecao('Hakimi', marrocos).
posicao('Hakimi', defensor).
clube('Hakimi', psg).
idade('Hakimi', 24).
golsCopa('Hakimi', 0).
assistenciaCopa('Hakimi', 1).

selecao('Mazraoui', marrocos).
posicao('Mazraoui', defensor).
clube('Mazraoui', bayern).
idade('Mazraoui', 25).
golsCopa('Mazraoui', 1).
assistenciaCopa('Mazraoui', 0).

selecao('Aguerd', marrocos).
posicao('Aguerd', defensor).
clube('Aguerd', westHam).
idade('Aguerd', 26).
golsCopa('Aguerd', 0).
assistenciaCopa('Aguerd', 0).

selecao('Saïss', marrocos).
posicao('Saïss', defensor).
clube('Saïss', besiktas).
idade('Saïss', 32).
golsCopa('Saïss', 1).
assistenciaCopa('Saïss', 0).

selecao('Yamiq', marrocos).
posicao('Yamiq', defensor).
clube('Yamiq', valladolid).
idade('Yamiq', 30).
golsCopa('Yamiq', 0).
assistenciaCopa('Yamiq', 0).

selecao('Dari', marrocos).
posicao('Dari', defensor).
clube('Dari', brest).
idade('Dari', 23).
golsCopa('Dari', 1).
assistenciaCopa('Dari', 0).

selecao('Attiyat-Allah', marrocos).
posicao('Attiyat-Allah', defensor).
clube('Attiyat-Allah', wydad).
idade('Attiyat-Allah', 27).
golsCopa('Attiyat-Allah', 0).
assistenciaCopa('Attiyat-Allah', 1).

selecao('Ziyech', marrocos).
posicao('Ziyech', meia).
clube('Ziyech', chelsea).
idade('Ziyech', 29).
golsCopa('Ziyech', 1).
assistenciaCopa('Ziyech', 1).

selecao('Sabiri', marrocos).
posicao('Sabiri', meia).
clube('Sabiri', sampdoria).
idade('Sabiri', 26).
golsCopa('Sabiri', 0).
assistenciaCopa('Sabiri', 1).

selecao('En-Nesyri', marrocos).
posicao('En-Nesyri', atacante).
clube('En-Nesyri', sevilla).
idade('En-Nesyri', 25).
golsCopa('En-Nesyri', 2).
assistenciaCopa('En-Nesyri', 0).


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

selecao('Livakovic', goleiro).
posicao('Livakovic', defensor).
clube('Livakovic', dZagreb).
idade('Livakovic', 37).
golsCopa('Livakovic', 0).
assistenciaCopa('Livakovic', 0).

selecao('Lovren', croacia).
posicao('Lovren', defensor).
clube('Lovren', lyon).
idade('Lovren', 33).
golsCopa('Lovren', 0).
assistenciaCopa('Lovren', 1).

selecao('Sosa', croacia).
posicao('Sosa', defensor).
clube('Sosa', stuttgart).
idade('Sosa', 24).
golsCopa('Sosa', 0).
assistenciaCopa('Sosa', 0).

selecao('Gvardiol', croacia).
posicao('Gvardiol', defensor).
clube('Gvardiol', leipzig).
idade('Gvardiol', 20).
golsCopa('Gvardiol', 1).
assistenciaCopa('Gvardiol', 0).

selecao('Juranovic', croacia).
posicao('Juranovic', defensor).
clube('Juranovic', celtic).
idade('Juranovic', 27).
golsCopa('Juranovic', 0).
assistenciaCopa('Juranovic', 1).

selecao('Perisic', croacia).
posicao('Perisic', meia).
clube('Perisic', tottenham).
idade('Perisic', 33).
golsCopa('Perisic', 1).
assistenciaCopa('Perisic', 3).

selecao('Kovacic', croacia).
posicao('Kovacic', meia).
clube('Kovacic', chelsea).
idade('Kovacic', 28).
golsCopa('Kovacic', 0).
assistenciaCopa('Kovacic', 0).

selecao('Modric', croacia).
posicao('Modric', meia).
clube('Modric', realMadrid).
idade('Modric', 37).
golsCopa('Modric', 0).
assistenciaCopa('Modric', 0).

selecao('Livaja', croacia).
posicao('Livaja', atacante).
clube('Livaja', hajdukSplit).
idade('Livaja', 29).
golsCopa('Livaja', 1).
assistenciaCopa('Livaja', 1).

selecao('Petkovic', croacia).
posicao('Petkovic', atacante).
clube('Petkovic', dZagreb).
idade('Petkovic', 28).
golsCopa('Petkovic', 1).
assistenciaCopa('Petkovic', 0).

selecao('Orsic', croacia).
posicao('Orsic', atacante).
clube('Orsic', dZagreb).
idade('Orsic', 30).
golsCopa('Orsic', 1).
assistenciaCopa('Orsic', 2).


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

selecao('Borjan', canada).
posicao('Borjan', goleiro).
clube('Borjan', redStar).
idade('Borjan', 35).
golsCopa('Borjan', 0).
assistenciaCopa('Borjan', 0).

selecao('Johnston', canada).
posicao('Johnston', defensor).
clube('Johnston', celtic).
idade('Johnston', 24).
golsCopa('Johnston', 0).
assistenciaCopa('Johnston', 0).

selecao('Adekugbe', canada).
posicao('Adekugbe', defensor).
clube('Adekugbe', hataysport).
idade('Adekugbe', 27).
golsCopa('Adekugbe', 0).
assistenciaCopa('Adekugbe', 0).

selecao('Miller', canada).
posicao('Miller', defensor).
clube('Miller', montreal).
idade('Miller', 2h).
golsCopa('Miller', 0).
assistenciaCopa('Miller', 0).

selecao('Vitória', canada).
posicao('Vitória', defensor).
clube('Vitória', chaves).
idade('Vitória', 35).
golsCopa('Vitória', 0).
assistenciaCopa('Vitória', 0).

selecao('Davies', canada).
posicao('Davies', defensor).
clube('Davies', bayern).
idade('Davies', 22).
golsCopa('Davies', 1).
assistenciaCopa('Davies', 0).

selecao('Laryea', canada).
posicao('Laryea', defensor).
clube('Laryea', toronto).
idade('Laryea', 27).
golsCopa('Laryea', 0).
assistenciaCopa('Laryea', 0).

selecao('Hoilett', canada).
posicao('Hoilett', meia).
clube('Hoilett', reading).
idade('Hoilett', 32).
golsCopa('Hoilett', 0).
assistenciaCopa('Hoilett', 0).

selecao('Hutchinson', canada).
posicao('Hutchinson', meia).
clube('Hutchinson', besiktas).
idade('Hutchinson', 39).
golsCopa('Hutchinson', 0).
assistenciaCopa('Hutchinson', 0).

selecao('Osorio', canada).
posicao('Osorio', meia).
clube('Osorio', toronto).
idade('Osorio', 30).
golsCopa('Osorio', 0).
assistenciaCopa('Osorio', 0).

selecao('Buchanan', canada).
posicao('Buchanan', atacante).
clube('Buchanan', brugge).
idade('Buchanan', 23).
golsCopa('Buchanan', 0).
assistenciaCopa('Buchanan', 1).


%% Selecao Suiça

jogador('Sommer',suica,goleiro,gladbach,34,0,0).
jogador('Akanji',suica,defensor,manchesterCity,27,1,0).
jogador('Rodríguez',suica,defensor,torino,30,0,0).
jogador('Widmer',suica,defensor,mainz,29,0,0).
jogador('Fernandes',suica,meia,mainz,26,0,0).
jogador('Freuler',suica,meia,nottinghamForest,30,1,0).
jogador('Xhaka',suica,meia,arsenal,30,0,0).
jogador('Sow',suica,meia,frankfurt,25,0,0).
jogador('Vargas',suica,meia,augsburgo,24,0,0).
jogador('Shaqiri',suica,meia,chicago,31,1,1).
jogador('Embolo',suica,atacante,monaco,25,2,0).

selecao('Sommer', suica).
posicao('Sommer', goleiro).
clube('Sommer', gladbach).
idade('Sommer', 34).
golsCopa('Sommer', 0).
assistenciaCopa('Sommer', 0).

selecao('Akanji', suica).
posicao('Akanji', defensor).
clube('Akanji', manchesterCity).
idade('Akanji', 27).
golsCopa('Akanji', 1).
assistenciaCopa('Akanji', 0).

selecao('Rodríguez', suica).
posicao('Rodríguez', defensor).
clube('Rodríguez', torino).
idade('Rodríguez', 30).
golsCopa('Rodríguez', 0).
assistenciaCopa('Rodríguez', 0).

selecao('Widmer', suica).
posicao('Widmer', defensor).
clube('Widmer', mainz).
idade('Widmer', 29).
golsCopa('Widmer', 0).
assistenciaCopa('Widmer', 0).

selecao('Fernandes', suica).
posicao('Fernandes', meia).
clube('Fernandes', mainz).
idade('Fernandes', 26).
golsCopa('Fernandes', 0).
assistenciaCopa('Fernandes', 0).

selecao('Freuler', suica).
posicao('Freuler', meia).
clube('Freuler', nottinghamForest).
idade('Freuler', 30).
golsCopa('Freuler', 1).
assistenciaCopa('Freuler', 0).

selecao('Xhaka', suica).
posicao('Xhaka', meia).
clube('Xhaka', arsenal).
idade('Xhaka', 30).
golsCopa('Xhaka', 0).
assistenciaCopa('Xhaka', 0).

selecao('Sow', suica).
posicao('Sow', meia).
clube('Sow', frankfurt).
idade('Sow', 25).
golsCopa('Sow', 0).
assistenciaCopa('Sow', 0).

selecao('Vargas', suica).
posicao('Vargas', meia).
clube('Vargas', augsburg).
idade('Vargas', 24).
golsCopa('Vargas', 0).
assistenciaCopa('Vargas', 0).

selecao('Shaqiri', suica).
posicao('Shaqiri', meia).
clube('Shaqiri', chicago).
idade('Shaqiri', 31).
golsCopa('Shaqiri', 1).
assistenciaCopa('Shaqiri', 1).

selecao('Embolo', suica).
posicao('Embolo', atacante).
clube('Embolo', monaco).
idade('Embolo', 25).
golsCopa('Embolo', 2).
assistenciaCopa('Embolo', 0).


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

%% Selecao Senegalesa

jogador('Mendy',senegal,goleiro,chelsea,30,0,0).
jogador('Koulibaly',senegal,defensor,chelsea,31,1,0).
jogador('Cisse',senegal,defensor,olympiacos,27,0,0).
jogador('Jakobs',senegal,defensor,monaco,23,0,1).
jogador('Sabaly',senegal,defensor,realBetis,29,0,0).
jogador('Gueye',senegal,meia,everton,33,0,0).
jogador('Ciss',senegal,meia,rayoVallecano,28,0,0).
jogador('Ndiaye',senegal,meia,sheffieldUnited,22,0,1).
jogador('Dia',senegal,atacante,salernitana,26,1,0).
jogador('Diatta',senegal,atacante,monaco,23,0,0).
jogador('Sarr',senegal,atacante,watford,24,1,0).

selecao('Mendy', senegal).
posicao('Mendy',goleiro).
clube('Mendy',chelsea).
idade('Mendy',30).
golsCopa('Mendy',0).
assistenciaCopa('Mendy',0).

selecao('Koulibaly', senegal).
posicao('Koulibaly',defensor).
clube('Koulibaly',chelsea).
idade('Koulibaly',31).
golsCopa('Koulibaly',1).
assistenciaCopa('Koulibaly',0).

selecao('Cisse', senegal).
posicao('Cisse',defensor).
clube('Cisse',olympiacos).
idade('Cisse',27).
golsCopa('Cisse',0).
assistenciaCopa('Cisse',0).

selecao('Jakobs', senegal).
posicao('Jakobs',defensor).
clube('Jakobs',monaco).
idade('Jakobs',23).
golsCopa('Jakobs',0).
assistenciaCopa('Jakobs',1).

selecao('Sabaly', senegal).
posicao('Sabaly',defensor).
clube('Sabaly',realBetis).
idade('Sabaly',29).
golsCopa('Sabaly',0).
assistenciaCopa('Sabaly',0).

selecao('Gueye', senegal).
posicao('Gueye',meia).
clube('Gueye',everton).
idade('Gueye',33).
golsCopa('Gueye',0).
assistenciaCopa('Gueye',0).

selecao('Ciss', senegal).
posicao('Ciss',meia).
clube('Ciss',rayoVallecano).
idade('Ciss',28).
golsCopa('Ciss',0).
assistenciaCopa('Ciss',0).

selecao('Ndiaye', senegal).
posicao('Ndiaye',meia).
clube('Ndiaye',sheffieldUnited).
idade('Ndiaye',22).
golsCopa('Ndiaye',0).
assistenciaCopa('Ndiaye',1).

selecao('Dia', senegal).
posicao('Dia',atacante).
clube('Dia',salernitana).
idade('Dia',26).
golsCopa('Dia',1).
assistenciaCopa('Dia',0).

selecao('Diatta', senegal).
posicao('Diatta',atacante).
clube('Diatta',monaco).
idade('Diatta',23).
golsCopa('Diatta',0).
assistenciaCopa('Diatta',0).

selecao('Sarr', senegal).
posicao('Sarr',atacante).
clube('Sarr',watford).
idade('Sarr',24).
golsCopa('Sarr',1).
assistenciaCopa('Sarr',0).

%% Selecao Equatoriana

jogador('Galindez',equador,goleiro,aucas,35,0,0).
jogador('Torres',equador,defensor,santos,25,0,2).
jogador('Hincapie',equador,defensor,bayerLeverkusen,20,0,0).
jogador('Estupinan',equador,defensor,brighton,24,0,0).
jogador('Preciado',equador,defensor,racingGenk,24,0,1).
jogador('Cifuentes',equador,meia,lafc,23,0,0).
jogador('Ibarra',equador,meia,pachuca,28,0,0).
jogador('Franco',equador,meia,talleres,24,0,0).
jogador('Estrada',equador,atacante,cruzAzul,26,0,0).
jogador('Valencia',equador,atacante,fenerbahce,33,3,0).
jogador('Sarmiento',equador,atacante,brighton,20,0,0).

selecao('Galindez', equador).
posicao('Galindez',goleiro).
clube('Galindez',aucas).
idade('Galindez',35).
golsCopa('Galindez',0).
assistenciaCopa('Galindez',0).

selecao('Torres', equador).
posicao('Torres',defensor).
clube('Torres',santos).
idade('Torres',25).
golsCopa('Torres',0).
assistenciaCopa('Torres',2).

selecao('Hincapie', equador).
posicao('Hincapie',defensor).
clube('Hincapie',bayerLeverkusen).
idade('Hincapie',20).
golsCopa('Hincapie',0).
assistenciaCopa('Hincapie',0).

selecao('Estupinan', equador).
posicao('Estupinan',defensor).
clube('Estupinan',brighton).
idade('Estupinan',24).
golsCopa('Estupinan',0).
assistenciaCopa('Estupinan',0).

selecao('Preciado', equador).
posicao('Preciado',defensor).
clube('Preciado',racingGenk).
idade('Preciado',24).
golsCopa('Preciado',0).
assistenciaCopa('Preciado',1).

selecao('Cifuentes', equador).
posicao('Cifuentes',meia).
clube('Cifuentes',lafc).
idade('Cifuentes',23).
golsCopa('Cifuentes',0).
assistenciaCopa('Cifuentes',0).

selecao('Ibarra', equador).
posicao('Ibarra',meia).
clube('Ibarra',pachuca).
idade('Ibarra',28).
golsCopa('Ibarra',0).
assistenciaCopa('Ibarra',0).

selecao('Franco', equador).
posicao('Franco',meia).
clube('Franco',talleres).
idade('Franco',24).
golsCopa('Franco',0).
assistenciaCopa('Franco',0).

selecao('Estrada', equador).
posicao('Estrada',atacante).
clube('Estrada',cruzAzul).
idade('Estrada',26).
golsCopa('Estrada',0).
assistenciaCopa('Estrada',0).

selecao('Valencia', equador).
posicao('Valencia',atacante).
clube('Valencia',fenerbahce).
idade('Valencia',33).
golsCopa('Valencia',3).
assistenciaCopa('Valencia',0).

selecao('Sarmiento', equador).
posicao('Sarmiento',atacante).
clube('Sarmiento',brighton).
idade('Sarmiento',20).
golsCopa('Sarmiento',0).
assistenciaCopa('Sarmiento',0).

%% Selecao Catari

jogador('Barsham',catar,goleiro,alSadd,24,0,0).
jogador('Miguel',catar,defensor,alSadd,32,0,0).
jogador('Hassan',catar,defensor,alSadd,29,0,0).
jogador('Ahmed',catar,defensor,alGharafa,23,0,0).
jogador('Khoukhi',catar,defensor,alSadd,32,0,0).
jogador('Waad',catar,meia,alSadd,23,0,0).
jogador('Hatem',catar,meia,alRayyan,32,0,0).
jogador('Madibo',catar,meia,alDuhail,26,0,0).
jogador('Muntari',catar,atacante,alDuhail,29,1,0).
jogador('Afif',catar,atacante,alSadd,26,0,0).
jogador('Ali',catar,atacante,alDuhail,26,0,0).

selecao('Barsham', catar).
posicao('Barsham',goleiro).
clube('Barsham',alSadd).
idade('Barsham',24).
golsCopa('Barsham',0).
assistenciaCopa('Barsham',0).

selecao('Miguel', catar).
posicao('Miguel',defensor).
clube('Miguel',alSadd).
idade('Miguel',32).
golsCopa('Miguel',0).
assistenciaCopa('Miguel',0).

selecao('Hassan', catar).
posicao('Hassan',defensor).
clube('Hassan',alSadd).
idade('Hassan',29).
golsCopa('Hassan',0).
assistenciaCopa('Hassan',0).

selecao('Ahmed', catar).
posicao('Ahmed',defensor).
clube('Ahmed',alGharafa).
idade('Ahmed',23).
golsCopa('Ahmed',0).
assistenciaCopa('Ahmed',0).

selecao('Khoukhi', catar).
posicao('Khoukhi',defensor).
clube('Khoukhi',alSadd).
idade('Khoukhi',32).
golsCopa('Khoukhi',0).
assistenciaCopa('Khoukhi',0).

selecao('Waad', catar).
posicao('Waad',meia).
clube('Waad',alSadd).
idade('Waad',23).
golsCopa('Waad',0).
assistenciaCopa('Waad',0).

selecao('Hatem', catar).
posicao('Hatem',meia).
clube('Hatem',alRayyan).
idade('Hatem',32).
golsCopa('Hatem',0).
assistenciaCopa('Hatem',0).

selecao('Madibo', catar).
posicao('Madibo',meia).
clube('Madibo',alDuhail).
idade('Madibo',26).
golsCopa('Madibo',0).
assistenciaCopa('Madibo',0).

selecao('Muntari', catar).
posicao('Muntari',atacante).
clube('Muntari',alDuhail).
idade('Muntari',29).
golsCopa('Muntari',1).
assistenciaCopa('Muntari',0).

selecao('Afif', catar).
posicao('Afif',atacante).
clube('Afif',alSadd).
idade('Afif',26).
golsCopa('Afif',0).
assistenciaCopa('Afif',0).

selecao('Ali', catar).
posicao('Ali',atacante).
clube('Ali',alDuhail).
idade('Ali',26).
golsCopa('Ali',0).
assistenciaCopa('Ali',0).

%% Selecao Estadunidense

jogador('Turner',estadosUnidos,goleiro,arsenal,28,0,0).
jogador('Dest',estadosUnidos,defensor,milan,22,0,1).
jogador('Zimmerman',estadosUnidos,defensor,nashvilleSC,29,0,0).
jogador('Robinson',estadosUnidos,defensor,fulham,25,0,0).
jogador('Ream',estadosUnidos,defensor,fulham,35,0,0).
jogador('Adams',estadosUnidos,meia,leedsUnited,23,0,0).
jogador('Musah',estadosUnidos,meia,valencia,20,0,0).
jogador('Pulisic',estadosUnidos,meia,chelsea,24,1,2).
jogador('Ferreira',estadosUnidos,atacante,fcDallas,22,0,0).
jogador('Wright',estadosUnidos,atacante,antalyaspor,24,1,0).
jogador('Weah',estadosUnidos,atacante,lille,22,1,0).

selecao('Turner', estadosUnidos).
posicao('Turner',goleiro).
clube('Turner',arsenal).
idade('Turner',28).
golsCopa('Turner',0).
assistenciaCopa('Turner',0).

selecao('Dest', estadosUnidos).
posicao('Dest',defensor).
clube('Dest',milan).
idade('Dest',22).
golsCopa('Dest',0).
assistenciaCopa('Dest',1).

selecao('Zimmerman', estadosUnidos).
posicao('Zimmerman',defensor).
clube('Zimmerman',nashvilleSC).
idade('Zimmerman',29).
golsCopa('Zimmerman',0).
assistenciaCopa('Zimmerman',0).

selecao('Robinson', estadosUnidos).
posicao('Robinson',defensor).
clube('Robinson',fulham).
idade('Robinson',25).
golsCopa('Robinson',0).
assistenciaCopa('Robinson',0).

selecao('Ream', estadosUnidos).
posicao('Ream',defensor).
clube('Ream',fulham).
idade('Ream',35).
golsCopa('Ream',0).
assistenciaCopa('Ream',0).

selecao('Adams', estadosUnidos).
posicao('Adams',meia).
clube('Adams',leedsUnited).
idade('Adams',23).
golsCopa('Adams',0).
assistenciaCopa('Adams',0).

selecao('Musah', estadosUnidos).
posicao('Musah',meia).
clube('Musah',valencia).
idade('Musah',20).
golsCopa('Musah',0).
assistenciaCopa('Musah',0).

selecao('Pulisic', estadosUnidos).
posicao('Pulisic',meia).
clube('Pulisic',chelsea).
idade('Pulisic',24).
golsCopa('Pulisic',1).
assistenciaCopa('Pulisic',2).

selecao('Ferreira', estadosUnidos).
posicao('Ferreira',atacante).
clube('Ferreira',fcDallas).
idade('Ferreira',22).
golsCopa('Ferreira',0).
assistenciaCopa('Ferreira',0).

selecao('Wright', estadosUnidos).
posicao('Wright',atacante).
clube('Wright',antalyaspor).
idade('Wright',24).
golsCopa('Wright',1).
assistenciaCopa('Wright',0).

selecao('Weah', estadosUnidos).
posicao('Weah',atacante).
clube('Weah',lille).
idade('Weah',22).
golsCopa('Weah',1).
assistenciaCopa('Weah',0).

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