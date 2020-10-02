/*
Don Chilo, doña Canuta, don Mario, la niña Lencha y doña Marina viven en un edificio
de cinco plantas. 
Todos ellos viven en distintos pisos. 

Don Chilo no vive en el quinto piso 
y doña Canuta no vive en el primero.

Don Mario no vive en el piso superior ni en el
inferior, 
y no está en un piso adyacente al de doña Marina ni al de doña Canuta. 

La niña Lencha vive en algún piso por encima de doña Canuta. ¿Quién vive en cada piso?
*/

quienViveEnCadaPiso(Edificio):-
	Edificio = [_, _, _, _, _],
  
  asignarpiso([chilo, PisoChilo], Edificio),
  =\=(PisoChilo, 5),
  
  asignarpiso([canuta, PisoCanuta], Edificio),
  =\=(PisoCanuta, 1),

   asignarpiso([mario, PisoMario], Edificio),
   =\=(PisoMario, 5),
   =\=(PisoMario, 1),  
    
   asignarpiso([marina, PisoMarina], Edificio),

    not(succ(PisoMario, PisoMarina)),
	not(succ(PisoMarina, PisoMario)),
    
	not(succ(PisoMario, PisoCanuta)), 
	not(succ(PisoCanuta, PisoMario)), 
	

	asignarpiso([lencha, PisoLencha], Edificio),
	>(PisoLencha, PisoCanuta).

asignarpiso([X, Y], [[X, Y], _, _, _, _]):- is(Y, 1).
asignarpiso([X, Y], [_, [X, Y], _, _, _]):- is(Y, 2).
asignarpiso([X, Y], [_, _, [X, Y], _, _]):- is(Y, 3).
asignarpiso([X, Y], [_, _, _, [X, Y], _]):- is(Y, 4).
asignarpiso([X, Y], [_, _, _, _, [X, Y]]):- is(Y, 5).
