:- module(define_jogadores, [jogador/7, limpa_jogadores/1]).
:- dynamic jogador/7.
%% Fatos: 
limpa_jogadores(X) :- limpa_jogadores1(X), fail.
limpa_jogadores(X).
limpa_jogadores1(X) :- retract(jogador(_, _, _, _, _, _, _)).
limpa_jogadores1(X).

%% Jogador(Nome, Seleção, Posição, Clube, Idade, Gols na Copa, Assistências na Copa).

%% Selecao Alema
jogador('Neuer',    alemanha, goleiro,  bayern,             idade36, gol0, assist0).
jogador('Rüdiger',  alemanha, defensor, realMadrid,         idade29, gol0, assist0).
jogador('Raum',     alemanha, defensor, leipzig,            idade24, gol0, assist1).
jogador('Süle',     alemanha, defensor, borussiaDortmund,   idade27, gol0, assist0).
jogador('Kimmich',  alemanha, meia,     bayern,             idade27, gol0, assist1).
jogador('Havertz',  alemanha, meia,     chelsea,            idade23, gol2, assist0).
jogador('Füllkrug', alemanha, atacante, werderBremen,       idade29, gol2, assist1).
jogador('Gnabry',   alemanha, atacante, bayern,             idade27, gol1, assist2).
jogador('Müller',   alemanha, atacante, bayern,             idade33, gol0, assist0).
jogador('Musiala',  alemanha, atacante, bayern,             idade19, gol0, assist1).
jogador('Sané',     alemanha, atacante, bayern,             idade26, gol0, assist1).

%% Selecao Argentina
jogador('Martinez',     argentina, goleiro,  astonVilla,       idade30, gol0, assist0).
jogador('Tagliafico',   argentina, defensor, lyon,             idade30, gol0, assist0).
jogador('Otamendi',     argentina, defensor, benfica,          idade34, gol0, assist0).
jogador('Romero',       argentina, defensor, tottenham,        idade24, gol0, assist0).
jogador('Molina',       argentina, defensor, atleticoDeMadrid, idade24, gol1, assist1).
jogador('DePaul',       argentina, meia,     atleticoDeMadrid, idade28, gol0, assist0).
jogador('EnzoFernandez',argentina, meia,     benfica,          idade21, gol1, assist1).
jogador('Paredes',      argentina, meia,     juventus,         idade28, gol0, assist0).
jogador('DiMaria',      argentina, atacante, juventus,         idade34, gol1, assist1).
jogador('Messi',        argentina, atacante, psg,              idade35, gol7, assist3).
jogador('Alvarez',      argentina, atacante, manchesterCity,   idade22, gol4, assist0).

%% Selecao Belga
jogador('Courtois',   belgica, goleiro, realMadrid,        idade30, gol0, assist0).
jogador('Vertonghen', belgica, defensor, anderlecht,       idade35, gol0, assist0).
jogador('Meunier',    belgica, defensor, borussiaDortmund, idade31, gol0, assist0).
jogador('Castagne',   belgica, defensor, leicester,        idade34, gol0, assist0).
jogador('Tielemans',  belgica, meia,     leicester,        idade24, gol0, assist0).
jogador('Witsel',     belgica, meia,     atleticoDeMadrid, idade20, gol0, assist0).
jogador('DeBruyne',   belgica, meia,     manchesterCity,   idade18, gol0, assist0).
jogador('Hazard',     belgica, atacante, realMadrid,       idade31, gol0, assist0).
jogador('Trossard',   belgica, atacante, brighton,         idade28, gol0, assist0).
jogador('Lukaku',     belgica, atacante, inter,            idade29, gol0, assist0).
jogador('Batshuayi',  belgica, atacante, fenerbahce,       idade29, gol1, assist0).

%% Selecao Brasileira
jogador('Alisson',     brasil, goleiro,  liverpool,          idade30, gol0, assist0).
jogador('Danilo',      brasil, defensor, juventus,           idade31, gol0, assist0).
jogador('Marquinhos',  brasil, defensor, psg,                idade28, gol0, assist0).
jogador('ThiagoSilva', brasil, defensor, chelsea,            idade38, gol0, assist0).
jogador('Alex',        brasil, defensor, juventus,           idade31, gol0, assist0).
jogador('Casemiro',    brasil, meia,     manchesterUnited,   idade30, gol1, assist1).
jogador('Paqueta',     brasil, meia,     westHam,            idade25, gol1, assist1).
jogador('Neymar',      brasil, atacante, psg,                idade30, gol2, assist1).
jogador('Raphinha',    brasil, atacante, barcelona,          idade26, gol0, assist0).
jogador('ViniciusJR',  brasil, atacante, realMadrid,         idade22, gol1, assist2).
jogador('Richarlison', brasil, atacante, tottenham,          idade25, gol3, assist0).

%% Selecao Canadense

jogador('Borjan',     canada, goleiro,  redStar,    idade35, gol0, assist0).
jogador('Johnston',   canada, defensor, celtic,     idade24, gol0, assist0).
jogador('Adekugbe',   canada, defensor, hataysport, idade27, gol0, assist0).
jogador('Miller',     canada, defensor, montreal,   idade25, gol0, assist0).
jogador('Vitória',    canada, defensor, chaves,     idade35, gol0, assist0).
jogador('Davies',     canada, defensor, bayern,     idade22, gol1, assist0).
jogador('Laryea',     canada, defensor, toronto,    idade27, gol0, assist0).
jogador('Hoilett',    canada, meia,     reading,    idade32, gol0, assist0).
jogador('Hutchinson', canada, meia,     besiktas,   idade39, gol0, assist0).
jogador('Osorio',     canada, meia,     toronto,    idade30, gol0, assist0).
jogador('Buchanan',   canada, atacante, brugge,     idade23, gol0, assist1).

%% Selecao Catari
jogador('Barsham',  catar, goleiro,  alSadd,    idade24, gol0, assist0).
jogador('Miguel',   catar, defensor, alSadd,    idade32, gol0, assist0).
jogador('Hassan',   catar, defensor, alSadd,    idade29, gol0, assist0).
jogador('Ahmed',    catar, defensor, alGharafa, idade23, gol0, assist0).
jogador('Khoukhi',  catar, defensor, alSadd,    idade32, gol0, assist0).
jogador('Waad',     catar, meia,     alSadd,    idade23, gol0, assist0).
jogador('Hatem',    catar, meia,     alRayyan,  idade32, gol0, assist0).
jogador('Madibo',   catar, meia,     alDuhail,  idade26, gol0, assist0).
jogador('Muntari',  catar, atacante, alDuhail,  idade29, gol1, assist0).
jogador('Afif',     catar, atacante, alSadd,    idade26, gol0, assist0).
jogador('Ali',      catar, atacante, alDuhail,  idade26, gol0, assist0).

%% Selecao Sul-Coreana

jogador('Seung-Gyu',   coreiaDoSul, goleiro,  alShabab,      idade32, gol0, assist0).
jogador('Jin-Su',      coreiaDoSul, defensor, jeonbukMotors, idade30, gol0, assist1).
jogador('Min-Jae',     coreiaDoSul, defensor, napoli,        idade26, gol0, assist0).
jogador('Moon-Hwan',   coreiaDoSul, defensor, jeonbukMotors, idade27, gol0, assist0).
jogador('Young-Gwon',  coreiaDoSul, defensor, ulsan,         idade32, gol1, assist0).
jogador('Woo-Young',   coreiaDoSul, meia,     alSadd,        idade33, gol0, assist0).
jogador('Seung-Ho',    coreiaDoSul, meia,     jeonbukMotors, idade25, gol1, assist0).
jogador('Kang-In',     coreiaDoSul, meia,     mallorca,      idade21, gol0, assist1).
jogador('Heung-MinSon',coreiaDoSul, atacante, tottenham,     idade30, gol0, assist1).
jogador('Gue-Sung',    coreiaDoSul, atacante, jeonbukMotors, idade24, gol2, assist0).
jogador('Hee-Chan',    coreiaDoSul, atacante, wolves,        idade26, gol1, assist0).

%% Selecao Costarriquenha
jogador('Navas',    costaRica, goleiro,     psg,         idade36, gol0, assist0).
jogador('Vargas',   costaRica, defensor,    millonarios, idade27, gol1, assist0).
jogador('Fuller',   costaRica, defensor,    herediano,   idade28, gol1, assist0).
jogador('Duarte',   costaRica, defensor,    levante,     idade33, gol0, assist0).
jogador('Oviedo',   costaRica, defensor,    saltLake,    idade32, gol0, assist0).
jogador('Waston',   costaRica, defensor,    saprissa,    idade35, gol0, assist0).
jogador('Matarrita',costaRica, defensor,    cincinnati,  idade28, gol0, assist0).
jogador('Borges',   costaRica, meia,        alajuelense, idade34, gol0, assist0).
jogador('Tejeda',   costaRica, meia,        herediano,   idade30, gol1, assist1).
jogador('Aguilera', costaRica, meia,        alajuelense, idade19, gol0, assist0).
jogador('Bennette', costaRica, atacante,    sunderland,  idade18, gol0, assist0).

%% Selecao Croata
jogador('Livakovic',croacia, goleiro,   dZagreb,        idade27, gol0, assist0).
jogador('Lovren',   croacia, defensor,  lyon,           idade33, gol0, assist1).
jogador('Sosa',     croacia, defensor,  stuttgart,      idade24, gol0, assist0).
jogador('Gvardiol', croacia, defensor,  leipzig,        idade20, gol1, assist0).
jogador('Juranovic',croacia, defensor,  celtic,         idade27, gol0, assist1).
jogador('Perisic',  croacia, meia,      tottenham,      idade33, gol1, assist3).
jogador('Kovacic',  croacia, meia,      chelsea,        idade28, gol0, assist0).
jogador('Modric',   croacia, meia,      realMadrid,     idade37, gol0, assist0).
jogador('Livaja',   croacia, atacante,  hajdukSplit,    idade29, gol1, assist1).
jogador('Petkovic', croacia, atacante,  dZagreb,        idade28, gol1, assist0).
jogador('Orsic',    croacia, atacante,  dZagreb,        idade30, gol1, assist2).

%% Selecao Equatoriana
jogador('Galindez',     equador,    goleiro,    aucas,              idade35, gol0, assist0).
jogador('Torres',       equador,    defensor,   santos,             idade25, gol0, assist2).
jogador('Hincapie',     equador,    defensor,   bayerLeverkusen,    idade20, gol0, assist0).
jogador('Estupinan',    equador,    defensor,   brighton,           idade24, gol0, assist0).
jogador('Preciado',     equador,    defensor,   racingGenk,         idade24, gol0, assist1).
jogador('Cifuentes',    equador,    meia,       lafc,               idade23, gol0, assist0).
jogador('Ibarra',       equador,    meia,       pachuca,            idade28, gol0, assist0).
jogador('Franco',       equador,    meia,       talleres,           idade24, gol0, assist0).
jogador('Estrada',      equador,    atacante,   cruzAzul,           idade26, gol0, assist0).
jogador('Valencia',     equador,    atacante,   fenerbahce,         idade33, gol3, assist0).
jogador('Sarmiento',    equador,    atacante,   brighton,           idade20, gol0, assist0).

%% Selecao Espanhola
jogador('Simon',    espanha,    goleiro,    athletic,           idade25, gol0, assist0).
jogador('Laporte',  espanha,    defensor,   manchesterCity,     idade28, gol0, assist0).
jogador('Alba',     espanha,    defensor,   barcelona,          idade33, gol0, assist2).
jogador('Balde',    espanha,    defensor,   barcelona,          idade19, gol0, assist0).
jogador('Busquets', espanha,    meia,       barcelona,          idade34, gol0, assist0).
jogador('Olmo',     espanha,    meia,       leipzig,            idade24, gol1, assist1).
jogador('Pedri',    espanha,    meia,       barcelona,          idade20, gol0, assist0).
jogador('Gavi',     espanha,    meia,       barcelona,          idade18, gol1, assist0).
jogador('Torres',   espanha,    atacante,   barcelona,          idade22, gol2, assist0).
jogador('Asensio',  espanha,    atacante,   realMadrid,         idade26, gol1, assist0).
jogador('Morata',   espanha,    atacante,   atleticoDeMadrid,   idade30, gol3, assist1).

%% Selecao Estadunidense
jogador('Turner',       estadosUnidos,  goleiro,    arsenal,        idade28, gol0, assist0).
jogador('Dest',         estadosUnidos,  defensor,   milan,          idade22, gol0, assist1).
jogador('Zimmerman',    estadosUnidos,  defensor,   nashvilleSC,    idade29, gol0, assist0).
jogador('Robinson',     estadosUnidos,  defensor,   fulham,         idade25, gol0, assist0).
jogador('Ream',         estadosUnidos,  defensor,   fulham,         idade35, gol0, assist0).
jogador('Adams',        estadosUnidos,  meia,       leedsUnited,    idade23, gol0, assist0).
jogador('Musah',        estadosUnidos,  meia,       valencia,       idade20, gol0, assist0).
jogador('Pulisic',      estadosUnidos,  meia,       chelsea,        idade24, gol1, assist2).
jogador('Ferreira',     estadosUnidos,  atacante,   fcDallas,       idade22, gol0, assist0).
jogador('Wright',       estadosUnidos,  atacante,   antalyaspor,    idade24, gol1, assist0).
jogador('Weah',         estadosUnidos,  atacante,   lille,          idade22, gol1, assist0).

%% Selecao Francesa
jogador('Lloris',           franca, goleiro,    tottenham,          idade36, gol0, assist0).
jogador('Varane',           franca, defensor,   manchesterUnited,   idade29, gol0, assist0).
jogador('Kounde',           franca, defensor,   barcelona,          idade28, gol0, assist0).
jogador('TheoHernandez',    franca, defensor,   milan,              idade25, gol1, assist2).
jogador('Fofana',           franca, meia,       chelsea,            idade23, gol0, assist0).
jogador('Rabiot',           franca, meia,       juventus,           idade27, gol1, assist1).
jogador('Tchouameni',       franca, meia,       realMadrid,         idade22, gol1, assist0).
jogador('Griezmann',        franca, atacante,   atleticoDeMadrid,   idade31, gol0, assist3).
jogador('Dembele',          franca, atacante,   barcelona,          idade25, gol0, assist2).
jogador('Mbappe',           franca, atacante,   psg,                idade24, gol8, assist2).
jogador('Giroud',           franca, atacante,   milan,              idade36, gol4, assist0).

%% Selecao Ganesa
jogador('AtiZigi',      gana,   goleiro,    stGallen,       idade26, gol0, assist0).
jogador('Lamptey',      gana,   defensor,   brighton,       idade22, gol0, assist0).
jogador('Salisu',       gana,   defensor,   southampton,    idade23, gol1, assist0).
jogador('RahmanBaba',   gana,   defensor,   reading,        idade28, gol0, assist0).
jogador('Amartey',      gana,   defensor,   leicester,      idade28, gol0, assist0).
jogador('Partey',       gana,   meia,       arsenal,        idade29, gol0, assist0).
jogador('Kudus',        gana,   meia,       ajax,           idade26, gol2, assist0).
jogador('AbdulSamed',   gana,   meia,       lens,           idade22, gol0, assist0).
jogador('JordanAyew',   gana,   atacante,   crystalPalace,  idade31, gol0, assist1).
jogador('AndréAyew',    gana,   atacante,   alSadd,         idade33, gol1, assist0).
jogador('Bukari',       gana,   atacante,   redStar,        idade24, gol1, assist0).

%% Selecao Holandesa
jogador('Noppert',      holanda,    goleiro,    heerenveen,         idade28, gol0, assist0).
jogador('Dumfries',     holanda,    defensor,   inter,              idade26, gol1, assist2).
jogador('VanDijk',      holanda,    defensor,   liverpool,          idade31, gol0, assist0).
jogador('Blind',        holanda,    defensor,   ajax,               idade32, gol1, assist1).
jogador('Ake',          holanda,    defensor,   manchesterCity,     idade27, gol0, assist0).
jogador('Roon',         holanda,    meia,       atalanta,           idade31, gol1, assist1).
jogador('DeJong',       holanda,    meia,       barcelona,          idade25, gol1, assist1).
jogador('Klaassen',     holanda,    meia,       ajax,               idade29, gol1, assist2).
jogador('Koopmeiners',  holanda,    atacante,   atalanta,           idade24, gol0, assist1).
jogador('Gakpo',        holanda,    atacante,   psv,                idade23, gol3, assist0).
jogador('Depay',        holanda,    atacante,   barcelona,          idade28, gol1, assist0).

%% Selecao Inglesa
jogador('Pickford',     inglaterra, goleiro,    everton,            idade28, gol0, assist0).
jogador('Maguire',      inglaterra, defensor,   manchesterUnited,   idade29, gol0, assist1).
jogador('Stones',       inglaterra, defensor,   manchesterCity,     idade28, gol0, assist0).
jogador('Shaw',         inglaterra, defensor,   manchesterUnited,   idade27, gol0, assist1).
jogador('Rice',         inglaterra, defensor,   westHam,            idade23, gol0, assist0).
jogador('Bellingham',   inglaterra, meia,       borussiaDortmund,   idade19, gol1, assist1).
jogador('Grealish',     inglaterra, meia,       manchesterCity,     idade27, gol1, assist0).
jogador('Saka',         inglaterra, meia,       arsenal,            idade21, gol3, assist0).
jogador('Phoden',       inglaterra, atacante,   manchesterCity,     idade22, gol1, assist2).
jogador('Kane',         inglaterra, atacante,   tottenham,          idade29, gol2, assist3).
jogador('Rashford',     inglaterra, atacante,   manchesterUnited,   idade25, gol3, assist0).

%% Selecao Japonesa
jogador('Gonda',        japao,  goleiro,    shimizuSPulse,  idade33, gol0, assist0).
jogador('Nagatomo',     japao,  defensor,   tokyo,          idade36, gol0, assist0).
jogador('Yoshida',      japao,  defensor,   schalke,        idade34, gol0, assist1).
jogador('Itakura',      japao,  defensor,   gladbach,       idade25, gol0, assist1).
jogador('Tomiyasu',     japao,  defensor,   arsenal,        idade24, gol0, assist0).
jogador('Endo',         japao,  meia,       stuttgart,      idade29, gol0, assist0).
jogador('Mitoma',       japao,  meia,       brighton,       idade25, gol0, assist1).
jogador('Kamada',       japao,  meia,       frankfurt,      idade25, gol0, assist0).
jogador('Doan',         japao,  atacante,   freiburg,       idade24, gol2, assist0).
jogador('JunyaIto',     japao,  atacante,   reims,          idade29, gol0, assist1).
jogador('Asano',        japao,  atacante,   bochum,         idade28, gol1, assist0).

%% Selecao Marroquina
jogador('Bounou',           marrocos,   goleiro,    sevilla,    idade31, gol0, assist0).
jogador('Hakimi',           marrocos,   defensor,   psg,        idade24, gol0, assist1).
jogador('Mazraoui',         marrocos,   defensor,   bayern,     idade25, gol1, assist0).
jogador('Aguerd',           marrocos,   defensor,   westHam,    idade26, gol0, assist0).
jogador('Saïss',            marrocos,   defensor,   besiktas,   idade32, gol1, assist0).
jogador('Yamiq',            marrocos,   defensor,   valladolid, idade30, gol0, assist0).
jogador('Dari',             marrocos,   defensor,   brest,      idade23, gol1, assist0).
jogador('Attiyat-Allah',    marrocos,   defensor,   wydad,      idade27, gol0, assist1).
jogador('Ziyech',           marrocos,   meia,       chelsea,    idade29, gol1, assist1).
jogador('Sabiri',           marrocos,   meia,       sampdoria,  idade26, gol0, assist1).
jogador('En-Nesyri',        marrocos,   atacante,   sevilla,    idade25, gol2, assist0).

%% Selecao Portuguesa
jogador('Costa',            portugal,   goleiro,    porto,              idade23, gol0, assist0).
jogador('Pepe',             portugal,   defensor,   porto,              idade39, gol1, assist0).
jogador('RubenDias',        portugal,   defensor,   manchesterCity,     idade25, gol0, assist0).
jogador('Guerreiro',        portugal,   defensor,   borussiaDortmund,   idade29, gol1, assist2).
jogador('Cancelo',          portugal,   defensor,   manchesterCity,     idade28, gol0, assist0).
jogador('BernardoSilva',    portugal,   meia,       manchesterCity,     idade28, gol1, assist1).
jogador('BrunoFernandes',   portugal,   meia,       manchesterUnited,   idade28, gol2, assist3).
jogador('Vitinha',          portugal,   atacante,   psg,                idade22, gol0, assist0).
jogador('JoaoFelix',        portugal,   atacante,   atleticoDeMadrid,   idade23, gol1, assist2).
jogador('Leao',             portugal,   atacante,   milan,              idade23, gol2, assist0).
jogador('CristianoRonaldo', portugal,   atacante,   alNassr,            idade37, gol1, assist0).

%% Selecao Senegalesa
jogador('Mendy',        senegal,    goleiro,    chelsea,            idade30, gol0, assist0).
jogador('Koulibaly',    senegal,    defensor,   chelsea,            idade31, gol1, assist0).
jogador('Cisse',        senegal,    defensor,   olympiacos,         idade27, gol0, assist0).
jogador('Jakobs',       senegal,    defensor,   monaco,             idade23, gol0, assist1).
jogador('Sabaly',       senegal,    defensor,   realBetis,          idade29, gol0, assist0).
jogador('Gueye',        senegal,    meia,       everton,            idade33, gol0, assist0).
jogador('Ciss',         senegal,    meia,       rayoVallecano,      idade28, gol0, assist0).
jogador('Ndiaye',       senegal,    meia,       sheffieldUnited,    idade22, gol0, assist1).
jogador('Dia',          senegal,    atacante,   salernitana,        idade26, gol1, assist0).
jogador('Diatta',       senegal,    atacante,   monaco,             idade23, gol0, assist0).
jogador('Sarr',         senegal,    atacante,   watford,            idade24, gol1, assist0).

%% Selecao Sérvia
jogador('Milinkovic-Savic', servia, goleiro,    torino,         idade25, gol0, assist0).
jogador('Pavlovic',         servia, defensor,   salzburg,       idade21, gol1, assist0).
jogador('Milenkovic',       servia, defensor,   fiorentina,     idade25, gol0, assist0).
jogador('Vlahovic',         servia, defensor,   werderBremen,   idade27, gol1, assist0).
jogador('Maksimovic',       servia, meia,       getafe,         idade27, gol0, assist0).
jogador('Radonjic',         servia, meia,       torino,         idade26, gol1, assist0).
jogador('Zivkovic',         servia, atacante,   paok,           idade26, gol0, assist2).
jogador('Milinkovic-Savic', servia, meia,       lazio,          idade27, gol1, assist0).
jogador('Djuricic',         servia, meia,       sampdoria,      idade30, gol0, assist0).
jogador('Mitrovic',         servia, atacante,   fulham,         idade28, gol2, assist0).
jogador('Tadic',            servia, atacante,   ajax,           idade34, gol0, assist2).

%% Selecao Suiça
jogador('Sommer',       suica,  goleiro,    gladbach,           idade34, gol0, assist0).
jogador('Akanji',       suica,  defensor,   manchesterCity,     idade27, gol1, assist0).
jogador('Rodríguez',    suica,  defensor,   torino,             idade30, gol0, assist0).
jogador('Widmer',       suica,  defensor,   mainz,              idade29, gol0, assist0).
jogador('Fernandes',    suica,  meia,       mainz,              idade26, gol0, assist0).
jogador('Freuler',      suica,  meia,       nottinghamForest,   idade30, gol1, assist0).
jogador('Xhaka',        suica,  meia,       arsenal,            idade30, gol0, assist0).
jogador('Sow',          suica,  meia,       frankfurt,          idade25, gol0, assist0).
jogador('Vargas',       suica,  meia,       augsburgo,          idade24, gol0, assist0).
jogador('Shaqiri',      suica,  meia,       chicago,            idade31, gol1, assist1).
jogador('Embolo',       suica,  atacante,   monaco,             idade25, gol2, assist0).

%% Selecao Uruguaia
jogador('Rochet',       uruguai,    goleiro,    nacional,           idade29, gol0, assist0).
jogador('Giménez',      uruguai,    defensor,   atleticoDeMadrid,   idade27, gol0, assist0).
jogador('Varela',       uruguai,    defensor,   flamengo,           idade29, gol0, assist0).
jogador('Bentancur',    uruguai,    meia,       tottenham,          idade25, gol0, assist0).
jogador('delaCruz',     uruguai,    meia,       riverplate,         idade25, gol0, assist0).
jogador('Pellistri',    uruguai,    meia,       manchesterUnited,   idade21, gol1, assist0).
jogador('deArrascaeta', uruguai,    meia,       flamengo,           idade28, gol2, assist0).
jogador('Valverde',     uruguai,    meia,       realMadrid,         idade24, gol0, assist0).
jogador('Suárez',       uruguai,    atacante,   gremio,             idade35, gol0, assist1).
jogador('Cavani',       uruguai,    atacante,   valencia,           idade35, gol0, assist0).
jogador('DarwinNúñez',  uruguai,    liverpool,  ajax,               idade23, gol0, assist0).
