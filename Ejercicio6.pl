/*
Elabore un programa en Prolog que invierta un árbol binario, es decir, todos los hijos
izquierdos pasan a ser hijos derechos, y viceversa.
*/

invertirArbol([SubArbolIzq, Nodo, SubArbolDer], [SubArbolDerechoInv, Nodo, SubArbolIzqInv]):-
    invertirArbol(SubArbolIzq, SubArbolIzqInv),
    invertirArbol(SubArbolDer, SubArbolDerechoInv).

invertirArbol([], []):- !.
