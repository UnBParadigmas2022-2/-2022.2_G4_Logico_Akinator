limpaJogadores([H|T]) :-
	retract(jogador(H)),
	limpaJogadores(T), !.
limpaJogadores([]) :- !.

limpaTodosJogadores(X):- 
    limpaBase(X),
    fail, !.
limpaTodosJogadores(X).

limpaBase(X) :- 
    retract(jogador(X)).
limpaBase(X).

registraJogadores([H|T]):- registraJogador(H), registraJogadores(T).
registraJogadores([]) :- !.

registraJogador(X) :- assert(jogador(X)).

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
posicao(defensor).
clube('Shaw', manchesterUnited).
idade('Shaw', 27).
golsCopa('Shaw', 0).
assistenciaCopa('Shaw', 1).

jogador('Rice').
selecao('Rice', inglaterra).
posicao(defensor).
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
clube('EnzoFernandez', benfica).
idade('EnzoFernandez', 21).
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


% Selecao Espanhola

jogador('Simon').
selecao('Simon', espanha).
posicao('Simon', goleiro).
clube('Simon', athletic).
idade('Simon', 25).
golsCopa('Simon', 0).
assistenciaCopa('Simon', 0).


jogador('Laporte').
selecao('Laporte', espanha).
posicao('Laporte', defensor).
clube('Laporte', manchesterCity).
idade('Laporte', 28).
golsCopa('Laporte', 0).
assistenciaCopa('Laporte', 0).

jogador('Alba').
selecao('Alba', espanha).
posicao('Alba', defensor).
clube('Alba', barcelona).
idade('Alba', 33).
golsCopa('Alba', 0).
assistenciaCopa('Alba', 2).

jogador('Balde').
selecao('Balde', espanha).
posicao('Balde', defensor).
clube('Balde', barcelona).
idade('Balde', 19).
golsCopa('Balde', 0).
assistenciaCopa('Balde', 0).

jogador('Busquets').
selecao('Busquets', espanha).
posicao('Busquets', meia).
clube('Busquets', barcelona).
idade('Busquets', 34).
golsCopa('Busquets', 0).
assistenciaCopa('Busquets', 0).

jogador('Olmo').
selecao('Olmo', espanha).
posicao('Olmo', meia).
clube('Olmo', leipzig).
idade('Olmo', 24).
golsCopa('Olmo', 1).
assistenciaCopa('Olmo', 1).

jogador('Pedri').
selecao('Pedri', espanha).
posicao('Pedri', meia).
clube('Pedri', barcelona).
idade('Pedri', 20).
golsCopa('Pedri', 0).
assistenciaCopa('Pedri', 0).

jogador('Gavi').
selecao('Gavi', espanha).
posicao('Gavi', meia).
clube('Gavi', barcelona).
idade('Gavi', 18).
golsCopa('Gavi', 1).
assistenciaCopa('Gavi', 0).

jogador('Torres').
selecao('Torres', espanha).
posicao('Torres', atacante).
clube('Torres', barcelona).
idade('Torres', 22).
golsCopa('Torres', 2).
assistenciaCopa('Torres', 0).

jogador('Asensio').
selecao('Asensio', espanha).
posicao('Asensio', atacante).
clube('Asensio', realMadrid).
idade('Asensio', 26).
golsCopa('Asensio', 1).
assistenciaCopa('Asensio', 0).

jogador('Morata').
selecao('Morata', espanha).
posicao('Morata', atacante).
clube('Morata', atleticoDeMadrid).
idade('Morata', 30).
golsCopa('Morata', 3).
assistenciaCopa('Morata', 1).

%% Selecao Belga


jogador('Courtois').
selecao('Courtois', belgica).
posicao('Courtois', goleiro).
clube('Courtois', realMadrid).
idade('Courtois', 30).
golsCopa('Courtois', 0).
assistenciaCopa('Courtois', 0).

jogador('Vertonghen').
selecao('Vertonghen', belgica).
posicao('Vertonghen', defensor).
clube('Vertonghen', anderlecht).
idade('Vertonghen', 35).
golsCopa('Vertonghen', 0).
assistenciaCopa('Vertonghen', 0).

jogador('Meunier').
selecao('Meunier', belgica).
posicao('Meunier', defensor).
clube('Meunier', borussiaDortmund).
idade('Meunier', 31).
golsCopa('Meunier', 0).
assistenciaCopa('Meunier', 0).

jogador('Castagne').
selecao('Castagne', belgica).
posicao('Castagne', defensor).
clube('Castagne', leicester).
idade('Castagne', 34).
golsCopa('Castagne', 0).
assistenciaCopa('Castagne', 0).

jogador('Tielemans').
selecao('Tielemans', belgica).
posicao('Tielemans', meia).
clube('Tielemans', leicester).
idade('Tielemans', 24).
golsCopa('Tielemans', 0).
assistenciaCopa('Tielemans', 0).

jogador('Witsel').
selecao('Witsel', belgica).
posicao('Witsel', meia).
clube('Witsel', atleticoDeMadrid).
idade('Witsel', 20).
golsCopa('Witsel', 0).
assistenciaCopa('Witsel', 0).

jogador('DeBruyne').
selecao('DeBruyne', belgica).
posicao('DeBruyne', meia).
clube('DeBruyne', manchesterCity).
idade('DeBruyne', 18).
golsCopa('DeBruyne', 0).
assistenciaCopa('DeBruyne', 0).

jogador('Hazard').
selecao('Hazard', belgica).
posicao('Hazard', atacante).
clube('Hazard', realMadrid).
idade('Hazard', 31).
golsCopa('Hazard', 0).
assistenciaCopa('Hazard', 0).

jogador('Trossard').
selecao('Trossard', belgica).
posicao('Trossard', atacante).
clube('Trossard', brighton).
idade('Trossard', 28).
golsCopa('Trossard', 0).
assistenciaCopa('Trossard', 0).

jogador('Lukaku').
selecao('Lukaku', belgica).
posicao('Lukaku', atacante).
clube('Lukaku', inter).
idade('Lukaku', 29).
golsCopa('Lukaku', 0).
assistenciaCopa('Lukaku', 0).

jogador('Batshuayi').
selecao('Batshuayi', belgica).
posicao('Batshuayi', atacante).
clube('Batshuayi', fenerbahce).
idade('Batshuayi', 29).
golsCopa('Batshuayi', 1).
assistenciaCopa('Batshuayi', 0).

%% Selecao Brasileira


jogador('Alisson').
selecao('Alisson', brasil).
posicao('Alisson', goleiro).
clube('Alisson', liverpool).
idade('Alisson', 30).
golsCopa('Alisson', 0).
assistenciaCopa('Alisson', 0).

jogador('Danilo').
selecao('Danilo', brasil).
posicao('Danilo', defensor).
clube('Danilo', juventus).
idade('Danilo', 31).
golsCopa('Danilo', 0).
assistenciaCopa('Danilo', 0).

jogador('Marquinhos').
selecao('Marquinhos', brasil).
posicao('Marquinhos', defensor).
clube('Marquinhos', psg).
idade('Marquinhos', 28).
golsCopa('Marquinhos', 0).
assistenciaCopa('Marquinhos', 0).

jogador('ThiagoSilva').
selecao('ThiagoSilva', brasil).
posicao('ThiagoSilva', defensor).
clube('ThiagoSilva', chelsea).
idade('ThiagoSilva', 38).
golsCopa('ThiagoSilva', 0).
assistenciaCopa('ThiagoSilva', 0).

jogador('Alex').
selecao('Alex', brasil).
posicao('Alex', defensor).
clube('Alex', juventus).
idade('Alex', 31).
golsCopa('Alex', 0).
assistenciaCopa('Alex', 0).

jogador('Casemiro').
selecao('Casemiro', brasil).
posicao('Casemiro', meia).
clube('Casemiro', manchesterUnited).
idade('Casemiro', 30).
golsCopa('Casemiro', 1).
assistenciaCopa('Casemiro', 1).

jogador('Paqueta').
selecao('Paqueta', brasil).
posicao('Paqueta', meia).
clube('Paqueta', westHam).
idade('Paqueta', 25).
golsCopa('Paqueta', 1).
assistenciaCopa('Paqueta', 1).

jogador('Neymar').
selecao('Neymar', brasil).
posicao('Neymar', atacante).
clube('Neymar', psg).
idade('Neymar', 30).
golsCopa('Neymar', 2).
assistenciaCopa('Neymar', 1).

jogador('Raphinha').
selecao('Raphinha', brasil).
posicao('Raphinha', atacante).
clube('Raphinha', barcelona).
idade('Raphinha', 26).
golsCopa('Raphinha', 0).
assistenciaCopa('Raphinha', 0).

jogador('ViniciusJR').
selecao('ViniciusJR', brasil).
posicao('ViniciusJR', atacante).
clube('ViniciusJR', realMadrid).
idade('ViniciusJR', 22).
golsCopa('ViniciusJR', 1).
assistenciaCopa('ViniciusJR', 2).

jogador('Richarlison').
selecao('Richarlison', brasil).
posicao('Richarlison', atacante).
clube('Richarlison', tottenham).
idade('Richarlison', 25).
golsCopa('Richarlison', 3).
assistenciaCopa('Richarlison', 0).

%% Selecao Portuguesa


jogador('Costa').
selecao('Costa', portugal).
posicao('Costa', goleiro).
clube('Costa', porto).
idade('Costa', 23).
golsCopa('Costa', 0).
assistenciaCopa('Costa', 0).

jogador('Pepe').
selecao('Pepe', portugal).
posicao('Pepe', defensor).
clube('Pepe', porto).
idade('Pepe', 39).
golsCopa('Pepe', 1).
assistenciaCopa('Pepe', 0).

jogador('RubenDias').
selecao('RubenDias', portugal).
posicao('RubenDias', defensor).
clube('RubenDias', manchesterCity).
idade('RubenDias', 25).
golsCopa('RubenDias', 0).
assistenciaCopa('RubenDias', 0).

jogador('Guerreiro').
selecao('Guerreiro', portugal).
posicao('Guerreiro', defensor).
clube('Guerreiro', borussiaDortmund).
idade('Guerreiro', 29).
golsCopa('Guerreiro', 1).
assistenciaCopa('Guerreiro', 2).

jogador('Cancelo').
selecao('Cancelo', portugal).
posicao('Cancelo', defensor).
clube('Cancelo', manchesterCity).
idade('Cancelo', 28).
golsCopa('Cancelo', 0).
assistenciaCopa('Cancelo', 0).

jogador('BernardoSilva').
selecao('BernardoSilva', portugal).
posicao('BernardoSilva', meia).
clube('BernardoSilva', manchesterCity).
idade('BernardoSilva', 28).
golsCopa('BernardoSilva', 1).
assistenciaCopa('BernardoSilva', 1).

jogador('BrunoFernandes').
selecao('BrunoFernandes', portugal).
posicao('BrunoFernandes', meia).
clube('BrunoFernandes', manchesterUnited).
idade('BrunoFernandes', 28).
golsCopa('BrunoFernandes', 2).
assistenciaCopa('BrunoFernandes', 3).

jogador('Vitinha').
selecao('Vitinha', portugal).
posicao('Vitinha', atacante).
clube('Vitinha', psg).
idade('Vitinha', 22).
golsCopa('Vitinha', 0).
assistenciaCopa('Vitinha', 0).

jogador('JoaoFelix').
selecao('JoaoFelix', portugal).
posicao('JoaoFelix', atacante).
clube('JoaoFelix', atleticoDeMadrid).
idade('JoaoFelix', 23).
golsCopa('JoaoFelix', 1).
assistenciaCopa('JoaoFelix', 2).

jogador('Leao').
selecao('Leao', portugal).
posicao('Leao', atacante).
clube('Leao', milan).
idade('Leao', 23).
golsCopa('Leao', 2).
assistenciaCopa('Leao', 0).

jogador('CristianoRonaldo').
selecao('CristianoRonaldo', portugal).
posicao('CristianoRonaldo', atacante).
clube('CristianoRonaldo', alNassr).
idade('CristianoRonaldo', 37).
golsCopa('CristianoRonaldo', 1).
assistenciaCopa('CristianoRonaldo', 0).


%% Selecao Japonesa


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


jogador('Navas').
selecao('Navas', costaRica).
posicao('Navas', goleiro).
clube('Navas', psg).
idade('Navas', 36).
golsCopa('Navas', 0).
assistenciaCopa('Navas', 0).

jogador('Vargas').
selecao('Vargas', costaRica).
posicao('Vargas', defensor).
clube('Vargas', millonarios).
idade('Vargas', 27).
golsCopa('Vargas', 1).
assistenciaCopa('Vargas', 0).

jogador('Fuller').
selecao('Fuller', costaRica).
posicao('Fuller', defensor).
clube('Fuller', herediano).
idade('Fuller', 28).
golsCopa('Fuller', 1).
assistenciaCopa('Fuller', 0).

jogador('Duarte').
selecao('Duarte', costaRica).
posicao('Duarte', defensor).
clube('Duarte', levante).
idade('Duarte', 33).
golsCopa('Duarte', 0).
assistenciaCopa('Duarte', 0).

jogador('Oviedo').
selecao('Oviedo', costaRica).
posicao('Oviedo', defensor).
clube('Oviedo', saltLake).
idade('Oviedo', 32).
golsCopa('Oviedo', 0).
assistenciaCopa('Oviedo', 0).

jogador('Waston').
selecao('Waston', costaRica).
posicao('Waston', defensor).
clube('Waston', saprissa).
idade('Waston', 35).
golsCopa('Waston', 0).
assistenciaCopa('Waston', 0).

jogador('Matarrita').
selecao('Matarrita', costaRica).
posicao('Matarrita', defensor).
clube('Matarrita', cincinnati).
idade('Matarrita', 28).
golsCopa('Matarrita', 0).
assistenciaCopa('Matarrita', 0).

jogador('Borges').
selecao('Borges', costaRica).
posicao('Borges', meia).
clube('Borges', alajuelense).
idade('Borges', 34).
golsCopa('Borges', 0).
assistenciaCopa('Borges', 0).

jogador('Tejeda').
selecao('Tejeda', costaRica).
posicao('Tejeda', meia).
clube('Tejeda', herediano).
idade('Tejeda', 30).
golsCopa('Tejeda', 1).
assistenciaCopa('Tejeda', 1).

jogador('Aguilera').
selecao('Aguilera', costaRica).
posicao('Aguilera', meia).
clube('Aguilera', alajuelense).
idade('Aguilera', 19).
golsCopa('Aguilera', 0).
assistenciaCopa('Aguilera', 0).

jogador('Bennette').
selecao('Bennette', costaRica).
posicao('Bennette', atacante).
clube('Bennette', sunderland).
idade('Bennette', 18).
golsCopa('Bennette', 0).
assistenciaCopa('Bennette', 0).



%% Selecao Croata


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


jogador('Sommer').
selecao('Sommer', suica).
posicao('Sommer', goleiro).
clube('Sommer', gladbach).
idade('Sommer', 34).
golsCopa('Sommer', 0).
assistenciaCopa('Sommer', 0).

jogador('Akanji').
selecao('Akanji', suica).
posicao('Akanji', defensor).
clube('Akanji', manchesterCity).
idade('Akanji', 27).
golsCopa('Akanji', 1).
assistenciaCopa('Akanji', 0).

jogador('Rodríguez').
selecao('Rodríguez', suica).
posicao('Rodríguez', defensor).
clube('Rodríguez', torino).
idade('Rodríguez', 30).
golsCopa('Rodríguez', 0).
assistenciaCopa('Rodríguez', 0).

jogador('Widmer').
selecao('Widmer', suica).
posicao('Widmer', defensor).
clube('Widmer', mainz).
idade('Widmer', 29).
golsCopa('Widmer', 0).
assistenciaCopa('Widmer', 0).

jogador('Fernandes').
selecao('Fernandes', suica).
posicao('Fernandes', meia).
clube('Fernandes', mainz).
idade('Fernandes', 26).
golsCopa('Fernandes', 0).
assistenciaCopa('Fernandes', 0).

jogador('Freuler').
selecao('Freuler', suica).
posicao('Freuler', meia).
clube('Freuler', nottmForest).
idade('Freuler', 30).
golsCopa('Freuler', 1).
assistenciaCopa('Freuler', 0).

jogador('Xhaka').
selecao('Xhaka', suica).
posicao('Xhaka', meia).
clube('Xhaka', arsenal).
idade('Xhaka', 30).
golsCopa('Xhaka', 0).
assistenciaCopa('Xhaka', 0).

jogador('Sow').
selecao('Sow', suica).
posicao('Sow', meia).
clube('Sow', frankfurt).
idade('Sow', 25).
golsCopa('Sow', 0).
assistenciaCopa('Sow', 0).

jogador('Vargas').
selecao('Vargas', suica).
posicao('Vargas', meia).
clube('Vargas', augsburgo).
idade('Vargas', 24).
golsCopa('Vargas', 0).
assistenciaCopa('Vargas', 0).

jogador('Embolo').
selecao('Embolo', suica).
posicao('Embolo', atacante).
clube('Embolo', monaco).
idade('Embolo', 25).
golsCopa('Embolo', 2).
assistenciaCopa('Embolo', 0).

jogador('Shaqiri').
selecao('Shaqiri', suica).
posicao('Shaqiri', meia).
clube('Shaqiri', chicago).
idade('Shaqiri', 31).
golsCopa('Shaqiri', 1).
assistenciaCopa('Shaqiri', 1).




%% Selecao Uruguaiana


jogador('Rochet').
selecao('Rochet', uruguai).
posicao('Rochet', goleiro).
clube('Rochet', nacional).
idade('Rochet', 29).
golsCopa('Rochet', 0).
assistenciaCopa('Rochet', 0).

jogador('Giménez').
selecao('Giménez', uruguai).
posicao('Giménez', defensor).
clube('Giménez', atleticoDeMadrid).
idade('Giménez', 27).
golsCopa('Giménez', 0).
assistenciaCopa('Giménez', 0).

jogador('Varela').
selecao('Varela', uruguai).
posicao('Varela', defensor).
clube('Varela', flamengo).
idade('Varela', 29).
golsCopa('Varela', 0).
assistenciaCopa('Varela', 0).

jogador('Bentancur').
selecao('Bentancur', uruguai).
posicao('Bentancur', meia).
clube('Bentancur', tottenham).
idade('Bentancur', 25).
golsCopa('Bentancur', 0).
assistenciaCopa('Bentancur', 0).

jogador('delaCruz').
selecao('delaCruz', uruguai).
posicao('delaCruz', meia).
clube('delaCruz', riverplate).
idade('delaCruz', 25).
golsCopa('delaCruz', 0).
assistenciaCopa('delaCruz', 0).

jogador('Pellistri').
selecao('Pellistri', uruguai).
posicao('Pellistri', meia).
clube('Pellistri', manchesterUnited).
idade('Pellistri', 21).
golsCopa('Pellistri', 1).
assistenciaCopa('Pellistri', 0).

jogador('deArrascaeta').
selecao('deArrascaeta', uruguai).
posicao('deArrascaeta', meia).
clube('deArrascaeta', flamengo).
idade('deArrascaeta', 28).
golsCopa('deArrascaeta', 2).
assistenciaCopa('deArrascaeta', 0).

jogador('Valverde').
selecao('Valverde', uruguai).
posicao('Valverde', meia).
clube('Valverde', realMadrid).
idade('Valverde', 24).
golsCopa('Valverde', 0).
assistenciaCopa('Valverde', 0).

jogador('Suárez').
selecao('Suárez', uruguai).
posicao('Suárez', atacante).
clube('Suárez', gremio).
idade('Suárez', 35).
golsCopa('Suárez', 0).
assistenciaCopa('Suárez', 1).

jogador('Cavani').
selecao('Cavani', uruguai).
posicao('Cavani', atacante).
clube('Cavani', valencia).
idade('Cavani', 35).
golsCopa('Cavani', 0).
assistenciaCopa('Cavani', 0).

jogador('DarwinNúñez').
selecao('DarwinNúñez', uruguai).
posicao('DarwinNúñez', liverpool).
clube('DarwinNúñez', ajax).
idade('DarwinNúñez', 23).
golsCopa('DarwinNúñez', 0).
assistenciaCopa('DarwinNúñez', 0).

%% Selecao Ganesa


jogador('AtiZigi').
selecao('AtiZigi', gana).
posicao('AtiZigi', goleiro).
clube('AtiZigi', stGallen).
idade('AtiZigi', 26).
golsCopa('AtiZigi', 0).
assistenciaCopa('AtiZigi', 0).

jogador('Lamptey').
selecao('Lamptey', gana).
posicao('Lamptey', defensor).
clube('Lamptey', brighton).
idade('Lamptey', 22).
golsCopa('Lamptey', 0).
assistenciaCopa('Lamptey', 0).

jogador('Salisu').
selecao('Salisu', gana).
posicao('Salisu', defensor).
clube('Salisu', southampton).
idade('Salisu', 23).
golsCopa('Salisu', 1).
assistenciaCopa('Salisu', 0).

jogador('RahmanBaba').
selecao('RahmanBaba', gana).
posicao('RahmanBaba', defensor).
clube('RahmanBaba', reading).
idade('RahmanBaba', 28).
golsCopa('RahmanBaba', 0).
assistenciaCopa('RahmanBaba', 0).

jogador('Amartey').
selecao('Amartey', gana).
posicao('Amartey', defensor).
clube('Amartey', leicester).
idade('Amartey', 28).
golsCopa('Amartey', 0).
assistenciaCopa('Amartey', 0).

jogador('Partey').
selecao('Partey', gana).
posicao('Partey', meia).
clube('Partey', arsenal).
idade('Partey', 29).
golsCopa('Partey', 0).
assistenciaCopa('Partey', 0).

jogador('Kudus').
selecao('Kudus', gana).
posicao('Kudus', meia).
clube('Kudus', ajax).
idade('Kudus', 26).
golsCopa('Kudus', 2).
assistenciaCopa('Kudus', 0).

jogador('AbdulSamed').
selecao('AbdulSamed', gana).
posicao('AbdulSamed', meia).
clube('AbdulSamed', lens).
idade('AbdulSamed', 22).
golsCopa('AbdulSamed', 0).
assistenciaCopa('AbdulSamed', 0).

jogador('JordanAyew').
selecao('JordanAyew', gana).
posicao('JordanAyew', atacante).
clube('JordanAyew', crystalPalace).
idade('JordanAyew', 31).
golsCopa('JordanAyew', 0).
assistenciaCopa('JordanAyew', 1).

jogador('AndréAyew').
selecao('AndréAyew', gana).
posicao('AndréAyew', atacante).
clube('AndréAyew', alSadd).
idade('AndréAyew', 33).
golsCopa('AndréAyew', 1).
assistenciaCopa('AndréAyew', 0).

jogador('Bukari').
selecao('Bukari', gana).
posicao('Bukari', atacante).
clube('Bukari', redStar).
idade('Bukari', 24).
golsCopa('Bukari', 1).
assistenciaCopa('Bukari', 0).

%% Selecao Sul-Coreana

jogador('Seung-Gyu').
selecao('Seung-Gyu', coreiaDoSul).
posicao('Seung-Gyu', goleiro).
clube('Seung-Gyu', alShabab).
idade('Seung-Gyu', 32).
golsCopa('Seung-Gyu', 0).
assistenciaCopa('Seung-Gyu', 0).

jogador('Jin-Su').
selecao('Jin-Su', coreiaDoSul).
posicao('Jin-Su', defensor).
clube('Jin-Su', jeonbukMotors).
idade('Jin-Su', 30).
golsCopa('Jin-Su', 0).
assistenciaCopa('Jin-Su', 1).

jogador('Min-Jae').
selecao('Min-Jae', coreiaDoSul).
posicao('Min-Jae', defensor).
clube('Min-Jae', napoli).
idade('Min-Jae', 26).
golsCopa('Min-Jae', 0).
assistenciaCopa('Min-Jae', 0).

jogador('Moon-Hwan').
selecao('Moon-Hwan', coreiaDoSul).
posicao('Moon-Hwan', defensor).
clube('Moon-Hwan', jeonbukMotors).
idade('Moon-Hwan', 27).
golsCopa('Moon-Hwan', 0).
assistenciaCopa('Moon-Hwan', 0).

jogador('Young-Gwon').
selecao('Young-Gwon', coreiaDoSul).
posicao('Young-Gwon', defensor).
clube('Young-Gwon', ulsan).
idade('Young-Gwon', 32).
golsCopa('Young-Gwon', 1).
assistenciaCopa('Young-Gwon', 0).

jogador('Woo-Young').
selecao('Woo-Young', coreiaDoSul).
posicao('Woo-Young', meia).
clube('Woo-Young', alSadd).
idade('Woo-Young', 33).
golsCopa('Woo-Young', 0).
assistenciaCopa('Woo-Young', 0).

jogador('Seung-Ho').
selecao('Seung-Ho', coreiaDoSul).
posicao('Seung-Ho', meia).
clube('Seung-Ho', jeonbukMotors).
idade('Seung-Ho', 25).
golsCopa('Seung-Ho', 1).
assistenciaCopa('Seung-Ho', 0).

jogador('Kang-In').
selecao('Kang-In', coreiaDoSul).
posicao('Kang-In', meia).
clube('Kang-In', mallorca).
idade('Kang-In', 21).
golsCopa('Kang-In', 0).
assistenciaCopa('Kang-In', 1).

jogador('Heung-MinSon').
selecao('Heung-MinSon', coreiaDoSul).
posicao('Heung-MinSon', atacante).
clube('Heung-MinSon', tottenham).
idade('Heung-MinSon', 30).
golsCopa('Heung-MinSon', 0).
assistenciaCopa('Heung-MinSon', 1).

jogador('Gue-Sung').
selecao('Gue-Sung', coreiaDoSul).
posicao('Gue-Sung', atacante).
clube('Gue-Sung', jeonbukMotors).
idade('Gue-Sung', 24).
golsCopa('Gue-Sung', 2).
assistenciaCopa('Gue-Sung', 0).

jogador('Hee-Chan').
selecao('Hee-Chan', coreiaDoSul).
posicao('Hee-Chan', atacante).
clube('Hee-Chan', wolves).
idade('Hee-Chan', 26).
golsCopa('Hee-Chan', 1).
assistenciaCopa('Hee-Chan', 0).

jogador('Attiyat-Allah').
selecao('Attiyat-Allah', marrocos).
posicao('Attiyat-Allah', defensor).
clube('Attiyat-Allah', wydad).
idade('Attiyat-Allah', 27).
golsCopa('Attiyat-Allah', 0).
assistenciaCopa('Attiyat-Allah', 1).

jogador('En-Nesyri').
selecao('En-Nesyri', marrocos).
posicao('En-Nesyri', atacante).
clube('En-Nesyri', sevilla).
idade('En-Nesyri', 25).
golsCopa('En-Nesyri', 2).
assistenciaCopa('En-Nesyri', 0).

jogador('Milinkovic-Savic').
selecao('Milinkovic-Savic', servia).
posicao('Milinkovic-Savic', goleiro).
clube('Milinkovic-Savic', torino).
idade('Milinkovic-Savic', 25).
golsCopa('Milinkovic-Savic', 0).
assistenciaCopa('Milinkovic-Savic', 0).

jogador('Milinkovic-Savic').
selecao('Milinkovic-Savic', servia).
posicao('Milinkovic-Savic', meia).
clube('Milinkovic-Savic', lazio).
idade('Milinkovic-Savic', 27).
golsCopa('Milinkovic-Savic', 1).
assistenciaCopa('Milinkovic-Savic', 0).


%% Selecao Marroquina


jogador('Bounou').
selecao('Bounou', marrocos).
posicao('Bounou', goleiro).
clube('Bounou', sevilla).
idade('Bounou', 31).
golsCopa('Bounou', 0).
assistenciaCopa('Bounou', 0).

jogador('Hakimi').
selecao('Hakimi', marrocos).
posicao('Hakimi', defensor).
clube('Hakimi', psg).
idade('Hakimi', 24).
golsCopa('Hakimi', 0).
assistenciaCopa('Hakimi', 1).

jogador('Mazraoui').
selecao('Mazraoui', marrocos).
posicao('Mazraoui', defensor).
clube('Mazraoui', bayern).
idade('Mazraoui', 25).
golsCopa('Mazraoui', 1).
assistenciaCopa('Mazraoui', 0).

jogador('Aguerd').
selecao('Aguerd', marrocos).
posicao('Aguerd', defensor).
clube('Aguerd', westHam).
idade('Aguerd', 26).
golsCopa('Aguerd', 0).
assistenciaCopa('Aguerd', 0).

jogador('Saïss').
selecao('Saïss', marrocos).
posicao('Saïss', defensor).
clube('Saïss', besiktas).
idade('Saïss', 32).
golsCopa('Saïss', 1).
assistenciaCopa('Saïss', 0).

jogador('Yamiq').
selecao('Yamiq', marrocos).
posicao('Yamiq', defensor).
clube('Yamiq', valladolid).
idade('Yamiq', 30).
golsCopa('Yamiq', 0).
assistenciaCopa('Yamiq', 0).

jogador('Dari').
selecao('Dari', marrocos).
posicao('Dari', defensor).
clube('Dari', brest).
idade('Dari', 23).
golsCopa('Dari', 1).
assistenciaCopa('Dari', 0).

jogador('Ziyech').
selecao('Ziyech', marrocos).
posicao('Ziyech', meia).
clube('Ziyech', chelsea).
idade('Ziyech', 29).
golsCopa('Ziyech', 1).
assistenciaCopa('Ziyech', 1).

jogador('Sabiri').
selecao('Sabiri', marrocos).
posicao('Sabiri', meia).
clube('Sabiri', sampdoria).
idade('Sabiri', 26).
golsCopa('Sabiri', 0).
assistenciaCopa('Sabiri', 1).

%% Selecao Sérvia


jogador('Pavlovic').
selecao('Pavlovic', servia).
posicao('Pavlovic', defensor).
clube('Pavlovic', salzburg).
idade('Pavlovic', 21).
golsCopa('Pavlovic', 1).
assistenciaCopa('Pavlovic', 0).

jogador('Milenkovic').
selecao('Milenkovic', servia).
posicao('Milenkovic', defensor).
clube('Milenkovic', fiorentina).
idade('Milenkovic', 25).
golsCopa('Milenkovic', 0).
assistenciaCopa('Milenkovic', 0).

jogador('Vlahovic').
selecao('Vlahovic', servia).
posicao('Vlahovic', defensor).
clube('Vlahovic', werderBremen).
idade('Vlahovic', 27).
golsCopa('Vlahovic', 1).
assistenciaCopa('Vlahovic', 0).

jogador('Maksimovic').
selecao('Maksimovic', servia).
posicao('Maksimovic', meia).
clube('Maksimovic', getafe).
idade('Maksimovic', 27).
golsCopa('Maksimovic', 0).
assistenciaCopa('Maksimovic', 0).

jogador('Radonjic').
selecao('Radonjic', servia).
posicao('Radonjic', meia).
clube('Radonjic', torino).
idade('Radonjic', 26).
golsCopa('Radonjic', 1).
assistenciaCopa('Radonjic', 0).

jogador('Zivkovic').
selecao('Zivkovic', servia).
posicao('Zivkovic', atacante).
clube('Zivkovic', paok).
idade('Zivkovic', 26).
golsCopa('Zivkovic', 0).
assistenciaCopa('Zivkovic', 2).

jogador('Djuricic').
selecao('Djuricic', servia).
posicao('Djuricic', meia).
clube('Djuricic', sampdoria).
idade('Djuricic', 30).
golsCopa('Djuricic', 0).
assistenciaCopa('Djuricic', 0).

jogador('Mitrovic').
selecao('Mitrovic', servia).
posicao('Mitrovic', atacante).
clube('Mitrovic', fulham).
idade('Mitrovic', 28).
golsCopa('Mitrovic', 2).
assistenciaCopa('Mitrovic', 0).

jogador('Tadic').
selecao('Tadic', servia).
posicao('Tadic', atacante).
clube('Tadic', ajax).
idade('Tadic', 34).
golsCopa('Tadic', 0).
assistenciaCopa('Tadic', 2).