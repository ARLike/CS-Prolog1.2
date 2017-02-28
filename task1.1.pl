/* here you write your code for Task 1 */
left(adams, brown).
left(brown, clark).
left(clark, davis).
left(davis, evans).

left(flores, green).
left(green, hermandez).
left(hermandez, iller).
left(iller, johnson).

right(X,Y):- left(Y,X).
neighbors(X,Y):- right(X,Y); right(Y,X).

sides(X,Y,Z,Q,W):- neighbors(X,Y), neighbors(Y,Z), neighbors(Z,Q), neighbors(Q,W),
                   \+(X=Y), \+(X=Z), \+(X=Q), \+(X=W),
                   \+(Y=Z), \+(Y=Q), \+(Y=W),
                   \+(Z=Q), \+(Z=W),
                   \+(Q=W), \+(right(X,_)).

across(X,Y):- sides(X,_,_,_,_), sides(Y,_,_,_,_), \+(X=Y);
              sides(_,X,_,_,_), sides(_,Y,_,_,_), \+(X=Y);
              sides(_,_,X,_,_), sides(_,_,Y,_,_), \+(X=Y);
              sides(_,_,_,X,_), sides(_,_,_,Y,_), \+(X=Y);
              sides(_,_,_,_,X), sides(_,_,_,_,Y), \+(X=Y).

acrossL(X,Y):- across(X,Y), \+(Y@<X).

