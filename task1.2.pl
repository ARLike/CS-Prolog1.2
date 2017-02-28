/* here you write your code for Task 2 */

findMax(X, [X]).
findMax(Max, [X|Xs]):- findMax(Max, Xs), Max >= X.
findMax(X, [X|Xs]):- findMax(Max, Xs), X > Max.

