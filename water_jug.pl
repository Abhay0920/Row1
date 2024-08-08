fill(x,y).
fill(2,0):-nl,write('goal reached...').
fill(X,Y):-X=0,Y=<1,nl,write('fill the 4-gallon jug:(4,'),write(Y),write(')'),fill(4,Y).
fill(X,Y):-Y=0,X=3,nl,write('fill the 3-gallon jug:'),write(X),write(',3)'),fill(X,3).
fill(X,Y):-X+Y>=4,Y=3,X=3,Y1 is Y-(4-X),nl,write('Pourwater from 3-gallon jug to 4-gallon untill it is full:(4,'),write(Y1),write(')'),fill(4,Y1).

fill(X,Y):-X+Y>=3,X=4,Y=<1,X1 is X-(3-Y),nl,write('Pourwater from 4-gallon jug to 3-gallon untill it is full:'),write(X1),write(',3)'),fill(X1,3).

fill(X,Y):-X+Y=<4,X=0,Y>1,X1 is X+Y,nl,write('Pour all the water from 3-gallon jug to 4-gallon:('),write(X1),write(',0)'),[fill(X1,0).

fill(X,Y):-X+Y<3,Y=0,Y1 is X+Y,nl,write('Pour all the water from 4-gallon jug to 3-gallon:(0,'),write(Y1),write(')'),fill(0,Y1).

fill(X,Y):-Y=2,X=4,nl,write('Empty the 4-gallon jug on ground:(0,'),write(Y),write(')'),fill(0,Y).

fill(X,Y):-Y=3,X>=1,nl,write('Empty the 3-gallon jug on ground:('),write(X),write(',0)'),fill(X,0).

fill(X,Y):-X>4,Y<3,write('4l jug overfolwed,'),nl.
fill(X,Y):-X<4,Y>3,write('3l jug overfolwed,'),nl.
fill(X,Y):-X>4,Y>3,write('Both 3l  4l jug overfolwed,').
