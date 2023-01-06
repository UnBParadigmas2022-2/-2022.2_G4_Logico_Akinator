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
selecao('Dumfries', holanda).
posicao('Dumfries',defensor).
clube('Dumfries',inter).
idade('Dumfries',26).
golsCopa('Dumfries',1).
assistenciaCopa('Dumfries',2).

jogador('VanDijk').
selecao('VanDijk', holanda).
posicao('VanDijk',defensor).
clube('VanDijk',liverpool).
idade('VanDijk',31).
golsCopa('VanDijk',0).
assistenciaCopa('VanDijk',0).

jogador('Blind').
selecao('Blind', holanda).
posicao('Blind',defensor).
clube('Blind',ajax).
idade('Blind',32).
golsCopa('Blind',1).
assistenciaCopa('Blind',1).

jogador('Ake').
selecao('Ake', holanda).
posicao('Ake',defensor).
clube('Ake',manchesterCity).
idade('Ake',27).
golsCopa('Ake',0).
assistenciaCopa('Ake',0).

jogador('Roon').
selecao('Roon', holanda).
posicao('Roon',meia).
clube('Roon',atalanta).
idade('Roon',31).
golsCopa('Roon',1).
assistenciaCopa('Roon',1).

jogador('DeJong').
selecao('DeJong', holanda).
posicao('DeJong',meia).
clube('DeJong',barcelona).
idade('DeJong',25).
golsCopa('DeJong',1).
assistenciaCopa('DeJong',1).

jogador('Klaassen').
selecao('Klaassen', holanda).
posicao('Klaassen',meia).
clube('Klaassen',ajax).
idade('Klaassen',29).
golsCopa('Klaassen',1).
assistenciaCopa('Klaassen',2).

jogador('Koopmeiners').
selecao('Koopmeiners', holanda).
posicao('Koopmeiners',atacante).
clube('Koopmeiners',atalanta).
idade('Koopmeiners',24).
golsCopa('Koopmeiners',0).
assistenciaCopa('Koopmeiners',1).

jogador('Gakpo').
selecao('Gakpo', holanda).
posicao('Gakpo',atacante).
clube('Gakpo',psv).
idade('Gakpo',23).
golsCopa('Gakpo',3).
assistenciaCopa('Gakpo',0).

jogador('Depay').
selecao('Depay', holanda).
posicao('Depay',atacante).
clube('Depay',barcelona).
idade('Depay',28).
golsCopa('Depay',1).
assistenciaCopa('Depay',0).


%% Selecao Inglesa

jogador('Pickford').
selecao('Pickford', inglaterra).
posicao('Pickford', goleiro).
clube('Pickford', everton).
idade('Pickford', 28).
golsCopa('Pickford', 0).
assistenciaCopa('Pickford', 0).

jogador('Maguire').
selecao('Maguire', inglaterra).
posicao('Maguire', defensor).
clube('Maguire', manchesterUnited).
idade('Maguire', 29).
golsCopa('Maguire', 0).
assistenciaCopa('Maguire', 1).

jogador('Stones').
selecao('Stones', inglaterra).
posicao('Stones', defensor).
clube('Stones', manchesterCity).
idade('Stones', 28).
golsCopa('Stones', 0).
assistenciaCopa('Stones', 0).

jogador('Shaw').
selecao('Shaw', inglaterra).
'Shaw', posicao(defensor).
clube('Shaw', manchesterUnited).
idade('Shaw', 27).
golsCopa('Shaw', 0).
assistenciaCopa('Shaw', 1).

jogador('Rice').
selecao('Rice', inglaterra).
'Rice', posicao(defensor).
clube('Rice', westHam).
idade('Rice', 23).
golsCopa('Rice', 0).
assistenciaCopa('Rice', 0).

jogador('Bellingham').
selecao('Bellingham', inglaterra).
posicao('Bellingham', meia).
clube('Bellingham', borussiaDortmund).
idade('Bellingham', 19).
golsCopa('Bellingham', 1).
assistenciaCopa('Bellingham', 1).

jogador('Grealish').
selecao('Grealish', inglaterra).
posicao('Grealish', meia).
clube('Grealish', manchesterCity).
idade('Grealish', 27).
golsCopa('Grealish', 1).
assistenciaCopa('Grealish', 0).

jogador('Saka').
selecao('Saka', inglaterra).
posicao('Saka', meia).
clube('Saka', arsenal).
idade('Saka', 21).
golsCopa('Saka', 3).
assistenciaCopa('Saka', 0).

jogador('Phoden').
selecao('Phoden', inglaterra).
posicao('Phoden', atacante).
clube('Phoden', manchesterCity).
idade('Phoden', 22).
golsCopa('Phoden', 1).
assistenciaCopa('Phoden', 2).

jogador('Kane').
selecao('Kane', inglaterra).
'Kane', posicao(atacante).
clube('Kane', tottenham).
idade('Kane', 29).
golsCopa('Kane', 2).
assistenciaCopa('Kane', 3).

jogador('Rashford').
selecao('Rashford', inglaterra).
posicao('Rashford', atacante).
clube('Rashford', manchesterUnited).
idade('Rashford', 25).
golsCopa('Rashford', 3).
assistenciaCopa('Rashford', 0).


%% Selecao Argentina

jogador('Martinez').
selecao('Martinez', argentina).
posicao('Martinez', goleiro).
clube('Martinez', astonVilla).
idade('Martinez', 30).
golsCopa('Martinez', 0).
assistenciaCopa('Martinez', 0).

jogador('Tagliafico').
selecao('Tagliafico', argentina).
posicao('Tagliafico', defensor).
clube('Tagliafico', lyon).
idade('Tagliafico', 30).
golsCopa('Tagliafico', 0).
assistenciaCopa('Tagliafico', 0).

jogador('Otamendi').
selecao('Otamendi', argentina).
posicao('Otamendi', defensor).
clube('Otamendi', benfica).
idade('Otamendi', 34).
golsCopa('Otamendi', 0).
assistenciaCopa('Otamendi', 0).

jogador('Romero').
selecao('Romero', argentina).
posicao('Romero', defensor).
clube('Romero', tottenham).
idade('Romero', 24).
golsCopa('Romero', 0).
assistenciaCopa('Romero', 0).

jogador('Molina').
selecao('Molina', argentina).
posicao('Molina', defensor).
clube('Molina', atleticoDeMadrid).
idade('Molina', 24).
golsCopa('Molina', 1).
assistenciaCopa('Molina', 1).

jogador('DePaul').
selecao('DePaul', argentina).
posicao('DePaul', meia).
clube('DePaul', atleticoDeMadrid).
idade('DePaul', 28).
golsCopa('DePaul', 0).
assistenciaCopa('DePaul', 0).

jogador('EnzoFernandez').
selecao('EnzoFernandez', argentina).
posicao('EnzoFernandez', meia).
clube('EnzoFernandez', 21).
idade('EnzoFernandez', 1).
golsCopa('EnzoFernandez', 1).
assistenciaCopa('EnzoFernandez', 0).

jogador('Paredes').
selecao('Paredes', argentina).
posicao('Paredes', meia).
clube('Paredes', juventus).
idade('Paredes', 28).
golsCopa('Paredes', 0).
assistenciaCopa('Paredes', 0).

jogador('DiMaria').
selecao('DiMaria', argentina).
posicao('DiMaria', atacante).
clube('DiMaria', juventus).
idade('DiMaria', 34).
golsCopa('DiMaria', 1).
assistenciaCopa('DiMaria', 1).

jogador('Messi').
selecao('Messi', argentina).
posicao('Messi', atacante).
clube('Messi', psg).
idade('Messi', 35).
golsCopa('Messi', 7).
assistenciaCopa('Messi', 3).

jogador('Alvarez').
selecao('Alvarez', argentina).
posicao('Alvarez', atacante).
clube('Alvarez', manchesterCity).
idade('Alvarez', 22).
golsCopa('Alvarez', 4).
assistenciaCopa('Alvarez', 0).


%% Selecao Francesa

jogador('Lloris').
selecao('Lloris', franca).
posicao('Lloris', goleiro).
clube('Lloris', tottenham).
idade('Lloris', 36).
golsCopa('Lloris', 0).
assistenciaCopa('Lloris', 0).

jogador('Varane').
selecao('Varane', franca).
posicao('Varane', defensor).
clube('Varane', manchesterUnited).
idade('Varane', 29).
golsCopa('Varane', 0).
assistenciaCopa('Varane', 0).

jogador('Kounde').
selecao('Kounde', franca).
posicao('Kounde', defensor).
clube('Kounde', barcelona).
idade('Kounde', 28).
golsCopa('Kounde', 0).
assistenciaCopa('Kounde', 0).

jogador('TheoHernandez').
selecao('TheoHernandez', franca).
posicao('TheoHernandez', defensor).
clube('TheoHernandez', milan).
idade('TheoHernandez', 25).
golsCopa('TheoHernandez', 1).
assistenciaCopa('TheoHernandez', 2).

jogador('Fofana').
selecao('Fofana', franca).
posicao('Fofana', meia).
clube('Fofana', chelsea).
idade('Fofana', 23).
golsCopa('Fofana', 0).
assistenciaCopa('Fofana', 0).

jogador('Rabiot').
selecao('Rabiot', franca).
posicao('Rabiot', meia).
clube('Rabiot', juventus).
idade('Rabiot', 27).
golsCopa('Rabiot', 1).
assistenciaCopa('Rabiot', 1).

jogador('Tchouameni').
selecao('Tchouameni', franca).
posicao('Tchouameni', meia).
clube('Tchouameni', realMadrid).
idade('Tchouameni', 22).
golsCopa('Tchouameni', 1).
assistenciaCopa('Tchouameni', 0).

jogador('Griezmann').
selecao('Griezmann', franca).
posicao('Griezmann', atacante).
clube('Griezmann', atleticoDeMadrid).
idade('Griezmann', 31).
golsCopa('Griezmann', 0).
assistenciaCopa('Griezmann', 3).

jogador('Dembele').
selecao('Dembele', franca).
posicao('Dembele', atacante).
clube('Dembele', barcelona).
idade('Dembele', 25).
golsCopa('Dembele', 0).
assistenciaCopa('Dembele', 2).

jogador('Mbappe').
selecao('Mbappe', franca).
posicao('Mbappe', atacante).
clube('Mbappe', psg).
idade('Mbappe', 24).
golsCopa('Mbappe', 8).
assistenciaCopa('Mbappe', 2).

jogador('Giroud').
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