%Resuelve los siguientes ejercicios siguiendo las instrucciones siguientes.

%1._Verificar si un elemento pertenece a una lista dada.
pertenece(X, [X|L]).
pertenece(X, [Y|L]):- pertenece(X,L).
	
%2._la longitud de una lista.
size([],0). % Si es una lista vacia regresa cero
size([_|XS],U):- size(XS,T), U is T+1.
% Separa la lista y va contando los elementos hasta que llega 
% a una lista vacia

%3._Obtener la concatenación de 2 listas dadas..
concatena([], L, L).
concatena([X|L1], L2, [X|L3]) :- concatena(L1, L2, L3).


%4._Eliminar.Verificar si un elemento pertenece a una lista dada.
eliminar(_,[ ],[ ]).
eliminar(X,[X|C],M) :- ! , eliminar(X,C,M).
eliminar(X,[Y|L1],[Y|L2]) :- eliminar(X,L1,L2).



%5._Agregar un elemento a una lista.
agregar(E,L,[E|L]).
agregar(E,[X|Y],[X|Z]):-agregar(E,Y,Z).

%6._Separar una lista en 2 listas (pares e impares). 
separar([],[],[]).
    separar([X|XS],[X|T1],T2):- X mod 2 =:= 0,separar(XS,T1,T2).
    separar([X|XS],T1,[X|T2]):-separar(XS,T1,T2).  


%7._Verifica si una lista se encuentra de manera ascendente.%
ascendente([X]).
    ascendente([X1,X2|TAIL]):- X1 =< X2, ascendente([X2|TAIL]).


    

%8._Verifica si una lista se encuentra de manera descendente.%
descendente([X]).
    descendente([X1,X2|TAIL]):- X1 >= X2, descendente([X2|TAIL]).

%9._aplanar(L, A), donde L es en general una lista de listas
aplanar([],[]).
aplanar([X|R],[X|P]):-atomic(X),aplanar(R,P).
aplanar([X|R],P):-not atomic(X),aplanar(X,P-X),
        aplanar(R,P-R),append(P-X,P-R,P).

%10._Obtener una lista con elementos menores que el elemento HEAD.
menorHead([],[]).
menorHead([_],[]).
menorHead([X1,X2|Tail],[X2|L]):- X1>X2,menorHead([X1|Tail],L).
menorHead([X1,X2|Tail],L):- X1<X2,menorHead([X1|Tail],L).

%11.-Obtener una lista con elementos mayores que el elemento HEAD.
mayorHead([],[]).
mayorHead([_],[]).
mayorHead([X1,X2|Tail],[X2|L]):-X1<X2, mayorHead([X1|Tail],L).
mayorHead([X1,X2|Tail],L):- X1>X2, mayorHead([X1|Tail],L).	

%12._Obtener una lista con los elementos invertidos.
% invertir(L,I), I es la lista que resulta de invertir L
invertir([],[]).
invertir([H|T],L) :- invertir(T,Z), append(Z,[H],L).	


