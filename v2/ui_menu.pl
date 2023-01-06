:- module(ui_menu, [
    print_header/0,
    print_menu/0,
    print_about/0,
    print_exit/0,
    print_unknown/0,
    print_fail/0,
    print_success/1
    ]).

print_header:-
    nl,
    write('*---------------------------------------------------*'), nl,
    write('|                                    .              |'), nl,
    write('|      ,-. ,-. ,-. ,-. . , . ,-. ,-. |- ,-. ,-.     |'), nl,
    write('|      |   | | | | ,-| |/  | | | ,-| |  | | |       |'), nl,
    write("|      `-' `-' |-' `-^ |\\  ' ' ' `-^ `' `-' '       |"), nl,
    write("|              |       ' `                          |"), nl,
    write("|              '                                    |"), nl,
    write('*---------------------------------------------------*'), nl.

print_menu:-
    nl,
    nl,
    write("1) Iniciar partida"), nl,
    write("2) Como jogar"), nl,
    write("3) Sair do jogo"), nl,
    nl.

print_about:-
    nl,
    write("Para jogar o jogo é bastante simples! Basta seguir algumas regras:"), nl,
    write("1. Pense em algum jogador que esteve presente na copa do mundo da FIFA de 2022"), nl,
    write("2. Inicie uma partida do jogo"), nl,
    write("3. Responda as perguntas apenas com 's' ou 'n', referentes a Sim ou Não, respectivamente"), nl,
    write("4. Se divirta ao utilizar"), nl,
    nl.

print_exit:-
    nl,
    write("Obrigado por jogar conosco! ;)"), nl, nl,
    halt.

print_unknown:-
    nl,
    write("Opção não reconhecida pelo sistema"), nl,
    write("O jogo será abortado para evitar complicações."), nl.

print_fail:-
    nl,
    write("Infelizmente não conseguimos identificar o seu jogador!"), nl,
    write("Parabéns por ganhar de nós!"), nl,
    halt.

print_success(Nome):-
    nl,
    write("O seu jogador é o "), write(Nome), nl,
    halt.