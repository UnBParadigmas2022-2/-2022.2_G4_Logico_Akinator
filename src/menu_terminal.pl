:- use_module(library(lists)).
:- use_module(library(random)).

:- initialization(testeBase).

:- dynamic pais/2.
:- dynamic continente/1.
:- dynamic jogador/7.

verifYes(X) :- (X == y; X == yes; X == s; X == sim), !.
verifyNo(X) :- (X == n; X == no; X == nao), !.

incrementa(Atual, Proximo) :- Proximo is Atual + 1, !.

carregaArquivos :- 
	consult('src/database/paises.pl'),
	consult('src/database/clubes.pl'),
	consult('src/database/jogadores.pl'),
	consult('src/database/perguntas.pl').

pegaFatoDoJogador(Topico, Jogador, Indicador) :-
	write("Entramos no fato do jogador - continente"), nl,
    Topico == 'continente',
	write("Selecionou continente"), nl,
	jogador(Jogador, Selecao, _, _, _, _, _), %busca seleção do jogador
	write("Encontrou Seleção "), write(Selecao), nl,
    pais(Indicador, Selecao), %busca continente da seleção e coloca a seleção dentro de Indicador
	write("Encontrou Continente "), write(Indicador), nl, !.

pegaFatoDoJogador(Topico, Jogador, Indicador) :-
	write("Entramos no fato do jogador - selecao"), nl,
	write(Topico),
    Topico == 'selecao',
	write("Selecionou selecao"), nl,
	Indicador is null,
	jogador(Jogador, Indicador, _, _, _, _, _), !.

shuffleTopico(Topico) :-
	findall(Choice, pergunta(Choice, _, _), ListaDeTopicos),
	write("Tipo de perguntas "), write(ListaDeTopicos), write(Topico), nl,
	random_member(Topico, ListaDeTopicos),
	write(Topico), nl, !.

shuffleJogador(Jogador) :-
	findall(Choice, jogador(Choice, _, _, _, _, _, _), ListaDeJogadores),
	write(ListaDeJogadores),
	nl,
	nl,
	random_member(Jogador, ListaDeJogadores), !.
				   
testeBase :-
	% Carrega os arquivos da base, randomiza o tipo de pergunta e o jogador, por fim chama o "menu"
	carregaArquivos,
	write('Pense em um jogador e aperte s quando estiver pronto'), 
	nl,
	read(Resposta),
	verifYes(Resposta), 
	shuffleTopico(Topico),
	shuffleJogador(Jogador),
	menu(Topico, Jogador), 
	!.

menu(Topico, Jogador) :-
	% Busca o "Topico" da pergunta para então recuperar a pergunta
	write("Entramos no menu"), nl,
	write(Topico), write(Jogador), nl,
	pegaFatoDoJogador(Topico, Jogador, FatoDoJogador),
	write("Pegamos o fato do jogador"), nl,
	pegaPergunta(Topico, Prefix, Sufix),
	write("Pegamos a pergunta"), nl,
	escrevePergunta(Prefix, FatoDoJogador, Sufix),
	nl,
	obtemResposta(Resposta),
	monitoraResposta(Topico, FatoDoJogador, Resposta),
	!.

escrevePergunta(Prefix, FatoDoJogador, Sufix) :-
	% Função exclusiva para escrita da pergunta
	write(Prefix), % Escreve
	write(FatoDoJogador),
	write(Sufix), !.

obtemResposta(Resposta) :-
	write('Resposta: '),
	read(Resposta), !.

limpaTodosJogadores(X):- 
    limpaBase(X),
    fail, !.
limpaTodosJogadores(X).

limpaBase(X):- 
    retract(jogador(X, _, _, _, _, _, _)), !.
limpaBase(X).

atualizaJogadores(Topico, FatoDoJogador) :-
	findall(Choice, jogador(Choice, FatoDoJogador, _, _, _, _, _), ListaDeJogadores),
	write(ListaDeJogadores),
	limpaTodosJogadores(X), !.

monitoraResposta(Topico, FatoDoJogador, Resposta):-
	verifYes(Resposta),
	write("Entramos no monitora - sim"), nl,
	% incrementa(Nivel, Nivel2),
	% pergunta(Nivel2, NumeroPergunta, Pergunta),
	% menu(Nivel, NumeroPergunta), 
	!. 

monitoraResposta(Topico, FatoDoJogador, Resposta) :-
	verifyNo(Resposta),
	write("Entramos no monitora - não"), nl,
	limpa(Topico, FatoDoJogador),
	write("Limpou"), nl,
	write(Topico), write(FatoDoJogador), nl, 
	shuffleTopico(Topico),
	write("Shuffle tipo funcionou"), nl,
    shuffleJogador(Jogador),
	write("Shuffle jogador funcionou"), nl,
	menu(Topico, Jogador), 
	!. 
