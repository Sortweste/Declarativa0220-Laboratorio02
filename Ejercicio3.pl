/* Dada una lista de números enteros, haga un programa que coloque todos los elementos
de la lista en un árbol binario de búsqueda. */

% [5,4,16,3,8,20]

lista_a_arbol([Cabeza|Cola], Arbol):-
  insertar(Cola, [[],Cabeza,[]], Arbol).

insertar([Cabeza|Cola], ArbolAux, Arbol):-
  insertar_elemento(ArbolAux, Cabeza, NuevoArbol),
  insertar(Cola, NuevoArbol, Arbol),!.

insertar([], ArbolAux, ArbolAux).

insertar_elemento([ArbolIzquierdo, Nodo, ArbolDerecho], Elemento, NuevoArbol):-
  <(Elemento, Nodo),
  insertar_elemento(ArbolIzquierdo, Elemento, ArbolAux),
  =(NuevoArbol, [ArbolAux, Nodo, ArbolDerecho]),!.

insertar_elemento([ArbolIzquierdo, Nodo, ArbolDerecho], Elemento, NuevoArbol):-
  >(Elemento, Nodo),
  insertar_elemento(ArbolDerecho, Elemento, ArbolAux),
  =(NuevoArbol, [ArbolIzquierdo, Nodo, ArbolAux]),!.

insertar_elemento([], Elemento, [ [], Elemento, [] ]).
