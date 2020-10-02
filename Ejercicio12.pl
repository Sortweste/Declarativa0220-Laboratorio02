/*
Cinco amigos estaban desesperados por ir a celebrar el fin de exámenes al Tunco. 
Acordaron que, después del último examen, saldrían volando a la playa, sin esperar a
nadie que se tardara. 

El día del último examen, el primero en terminarlo fue Chico,
Paco salió después de Pancho, 
Chepe no fue al paseo 
y José salió inmediatamente antes de
Paco. 

En qué orden terminaron el examen?
*/

ordenExamen(Orden):-
    =(Orden, [_,_,_,_,_]),
    
    =(Orden, [[chico, 1]|_]),
    
    examen_finalizado([paco, OrdenPaco], Orden),
    examen_finalizado([pancho, OrdenPancho], Orden),
    
    >(OrdenPaco, OrdenPancho),
    
    last(Orden, [chepe, 5]),
    
    examen_finalizado([jose, OrdenJose], Orden),
    
    succ(OrdenJose, OrdenPaco),!.
    
examen_finalizado([X,2], [_,[X,2],_,_,_]).
examen_finalizado([X,3], [_,_,[X,3],_,_]).
examen_finalizado([X,4], [_,_,_,[X,4],_]).
