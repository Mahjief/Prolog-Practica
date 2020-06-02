
/* 1 */

sumaPares([],0):-!.
sumaPares([H|B],R):-
    sumaPares(B,R1),
    (   0 is mod(H,2)-> R is H + R1;R is R1).


    %2

maximo([],0):-!.
maximo([H|B],Max):-
    maximo(B,Max1),
    (H>Max1,Max is H;Max1>H,Max is Max1).


    %3

generar(1,R):-append([],[4],R),!.
generar(N,R):-
    N1 is N-1,
    generar(N1,R1), ( 0 is mod(N,2)->
                    Aux is (N/2),append(R1,[Aux],R);
                    Aux is ((N*3)+1),append(R1,[Aux],R)).




    %4

verificar(N,Cubo):-
    C is N*N*N,
    (   C is Cubo ->
    write(N^3),write("="),write(Cubo),write(" es cubo")
    ;
    write(Cubo),write(" no es cubo de "),write(N)
    ).



%between(start,end,Resp)

% N mod 2
