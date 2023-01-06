cadastraPerguntas:- 
    findall(Jogador, jogador(Jogador, _, _, _, _, _, _), TodosJogadores),

encapsularCadastroDePerguntas([H|T]):- 
    Jogador(H, Selecao, Posicao, Time, Idade, Gols, Assists),
    assert(pergunta(H, Selecao)),
    assert(pergunta(H, Posicao)),
    assert(pergunta(H, Time)),
    assert(pergunta(H, Idade)),
    assert(pergunta(H, Gols)),
    assert(pergunta(H, Assists)),
    encapsularCadastroDePerguntas(T).
encapsularCadastroDePerguntas([]):- !.
