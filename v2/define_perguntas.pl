:- module(define_perguntas, [
    cadastraPerguntas/0,
    pergunta/2
]).
:- dynamic pergunta/2.
:- use_module([define_jogadores]).

%symbolic question
pergunta(pele, rei).

cadastraPerguntas :- 
    findall(Jogador, jogador(Jogador, _, _, _, _, _, _), TodosJogadores),
    encapsularCadastroDePerguntas(TodosJogadores), !.

encapsularCadastroDePerguntas([H|T]) :-
    jogador(H, Selecao, Posicao, Time, Idade, Gols, Assists),
    assert(pergunta(H, Selecao)),
    assert(pergunta(H, Posicao)),
    assert(pergunta(H, Time)),
    assert(pergunta(H, Idade)),
    assert(pergunta(H, Gols)),
    assert(pergunta(H, Assists)),
    encapsularCadastroDePerguntas(T).
encapsularCadastroDePerguntas([]) :- !.
