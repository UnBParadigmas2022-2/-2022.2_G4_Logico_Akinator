:- use_module([ui_menu]).
:- use_module([define_jogadores]).
:- use_module([define_perguntas]).
:- use_module([perguntas]).


main1 :-
    cadastraPerguntas,
    print_header,
    print_menu,
    trata_resposta.


trata_resposta :-
    write("Insira sua opção: "), 
    read(Ans),
    trata_resposta(Ans).
trata_resposta(1) :- fluxo_do_jogo.
trata_resposta(2) :- 
    print_about,
    print_menu,
    write("Insira sua opção: "), 
    read(Ans),
    trata_resposta(Ans).
trata_resposta(3) :- print_exit.
trata_resposta(X) :- print_unknown, print_exit.


verifica_vitoria(0):- print_fail.
verifica_vitoria(1):- 
    jogador(Nome, _, _, _, _, _, _),
    write(Nome),
    print_success(Nome).
verifica_vitoria(X):- !.


fluxo_do_jogo :-
    findall(X, jogador(X, _, _, _, _, _, _), Jogadores),
    length(Jogadores, QuantidadeDeJogadores),
    verifica_vitoria(QuantidadeDeJogadores),
    
    % randomiza jogador
    random_member(JogadorAleatorio, Jogadores),
    
    % randomiza pergunta
    findall(X, pergunta(JogadorAleatorio, X), PerguntasDoJogador),
    random_member(TemaDaPergunta, PerguntasDoJogador),
    lidar_pergunta(TemaDaPergunta),
    fluxo_do_jogo.
