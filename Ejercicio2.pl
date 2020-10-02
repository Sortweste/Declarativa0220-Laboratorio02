/*

Un árbol binario se dice que es equilibrado si el número de niveles de sus subárboles
izquierdo y derecho no difieren en más de una unidad. Haga un programa en Prolog que
evalúe si un árbol es equilibrado.

*/

equilibrado(Arbol):-
    diferencia_alturas(Arbol, _).

diferencia_alturas([], 0):-!.

diferencia_alturas([SubArbolIzq, _, SubArbolDer], Altura):-
    diferencia_alturas(SubArbolIzq, AlturaIzq),
    diferencia_alturas(SubArbolDer, AlturaDer),
    is(Altura, +(1, max(AlturaIzq, AlturaDer))),
    =<(abs(-(AlturaIzq, AlturaDer)),1).
