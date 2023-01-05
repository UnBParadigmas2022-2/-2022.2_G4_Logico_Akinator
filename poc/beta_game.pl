:- dynamic jogador/1.

jogador(ney).
posicao(ney, atacante).
selecao(ney, brasil).
camisa(ney, 10).
pergunta(ney, brasileiro).

jogador(richarlisson).
posicao(richarlisson, atacante).
selecao(richarlisson, brasil).
camisa(richarlisson, 9).
pergunta(richarlisson, brasileiro).

atualiza_base([H|T]) :- retract(jogador(H)),
                        atualiza_base(T).
atualiza_base([]) :- !.

verifica_vitoria(0):- write("Perdemos"), nl.
verifica_vitoria(1):- write("Ganhamos"), nl.
verifica_vitoria(X):- nl.

fluxo_do_jogo:- % verifica vitória
                findall(X, jogador(X), Jogadores),
                length(Jogadores, QuantidadeDeJogadores),
                verifica_vitoria(QuantidadeDeJogadores),

                % randomiza jogador
                random_member(JogadorAleatorio, Jogadores),
                write(JogadorAleatorio), nl,

                % randomiza pergunta
                findall(X, pergunta(JogadorAleatorio, X), PerguntasDoJogador),
                random_member(TemaDaPergunta, PerguntasDoJogador),
                lidar_pergunta(TemaDaPergunta).

lidar_pergunta(brasileiro) :- write("Seu jogador é brasileiro? "),
                              read(Ans),
                              atualizar_nacionalidade(Ans, brasil).

atualizar_nacionalidade(s, Selecao):- findall(Jogador, selecao(Jogador, Sele)).
atualizar_nacionalidade(n, Selecao):- write("Não brasileiro").