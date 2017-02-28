/* here you write your code for Task 1 */
nonStopFlight(pittsburgh, cleveland).
nonStopFlight(philadelphia, pittsburgh).
nonStopFlight(columbus, philadelphia).
nonStopFlight(sanFrancisco, columbus).
nonStopFlight(detroit, sanFrancisco).
nonStopFlight(toledo, detroit).
nonStopFlight(houston, toledo).

findFlight(A,B):- nonStopFlight(A,B).

findFlight(A,B):- nonStopFlight(A,C), findFlight(C,B).









flightPath(A,B):- nonStopFlight(A,B), write(B), write('<--'), write(A).

flightPath(A,B):- nonStopFlight(A,C), flightPath(C,B), write('<--'), write(A).
