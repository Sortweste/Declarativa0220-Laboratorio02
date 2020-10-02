/*
Dado un dato y un árbol binario de búsqueda, localizar el nodo en el árbol que contiene
el dato y retornar el subárbol que tiene a este nodo como raíz.

[[[[], 1, []], 3, [[], 4, []]], 5, [[], 9, [[], 11, []]]]

*/

retornar_subarbol(Dato, [_, Raiz, SubArbolDer], SubArbol):-
    >(Dato, Raiz),
    retornar_subarbol(Dato, SubArbolDer, SubArbol),!.

retornar_subarbol(Dato, [SubArbolIzq, Raiz, _], SubArbol):-
    <(Dato, Raiz),
    retornar_subarbol(Dato, SubArbolIzq, SubArbol),!.

retornar_subarbol(Dato, [SubArbolIzq, Dato, SubArbolDer], [SubArbolIzq, Dato, SubArbolDer]):-!.
