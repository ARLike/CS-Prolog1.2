toDelete(_, [], []).
toDelete(A, [A|RemainingList], Results):- toDelete(A, RemainingList, Results).
toDelete(A, [B|RemainingList], [B|Results]):- A \= B, toDelete(A, RemainingList, Results).

myDelete(File,List,Elem,Results):- write('Please enter a file name: '), read(File), nl,
                   write('Please enter a list: '), read(List), nl,
                   write('Please enter an item you would like to remove: '), read(Elem),
                   toDelete(Elem,List, Results),
                   writeToFile(File,List,Elem).

writeToFile(File,List,Elem):- open(File, write, Stream), forall(toDelete(Elem, List, Results), write(Stream, (Results))), close(Stream).
