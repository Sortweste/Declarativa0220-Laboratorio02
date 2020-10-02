/*
Dado un árbol binario de búsqueda que contiene sólo números enteros, haga un
programa que coloque todos sus elementos en una lista.
*/

% [[[[],44,[]],25,[[],10,[[],-9,[]]]],7,[[[],1,[]],2,[[[],0,[]],80,[[],21,[]]]]]


arbol_a_lista([SubArbolIzq, Nodo, SubArbolDer], Lista):-
  arbol_a_lista(SubArbolIzq, ListaIzq),
  arbol_a_lista(SubArbolDer, ListaDer),
  append(ListaIzq, ListaDer, ListaConcat),
  =(Lista, [Nodo | ListaConcat]),!.

arbol_a_lista([], []).
