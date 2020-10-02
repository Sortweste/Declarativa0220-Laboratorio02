/*
Elabore un programa en Prolog que cuente la cantidad de nodos de un árbol.
*/

recorrer_y_contar([SubArbolIzq, _, SubArbolDer], Respuesta):-
    recorrer_y_contar(SubArbolIzq, ContadorIzq),
    recorrer_y_contar(SubArbolDer, ContadorDer),
    is(Respuesta, +(1, +(ContadorIzq, ContadorDer))),!.
    
recorrer_y_contar([], 0):-!.
