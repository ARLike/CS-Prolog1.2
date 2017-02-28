--------------------------------------------------------------
| PROGRAMMER: Alexandrea Like                                |
| CLASS:      CS 3060, section 1001                          |
| TEACHER/TA: Dr. Sankardas Roy/Sunil                        |
| ASSIGNMENT: Assignment2 - Prolog; function 1-3             |
| DUE:        Feb. 2, 2017                                   |
--------------------------------------------------------------
|TABLE OF CONTENTS:                            |
------------------------------------------------
| (a) how to run program                       |
| (b) input                                    |
|     (i)   Task 1                             |
|     (ii)  Task 2                             |
|     (iii) Task 3                             |
| (c) sample tests                             |
|     (i)   Task 1                             |
|     (ii)  Task 2                             |
|     (iii) Task 3                             |
------------------------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

(a) HOW TO RUN ASSIGNMENT 2
    > To run, you must first check that you have prolog SWI installed. 

    > In order to check if you have Prolog installed, it is  
    recommended you enter swipl into your command line.

    > Once you have confirmed that you in fact have Prolog    
    installed:

        * OSX

            - Enter: 

                    swipl

        * Windows

            - Find the application "SWIPL" on your and open it. A command shell
            should appear

    > If you have followed these steps, SWI-Prolog should start a CLI shell and
    display the following header:

                "Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 7.2.3)
                Copyright (c) 1990-2015 University of Amsterdam, VU Amsterdam
                SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
                and you are welcome to redistribute it under certain conditions.
                Please visit http://www.swi-prolog.org for details.

                For help, use ?- help(Topic). or ?- apropos(Word).

                ?- "

    > *BEFORE RUNNING THE PROGRAM*

        * You must make sure that your CLI shell is exploring the project folder.

            - OSX:

                > Make sure that you are in the "Assignment2-Prolog" directory before
                entering swipl command. To check this, enter:
                                                                        pwd
            - Windows:

                > Make sure the "Assignment2-Prolog" folder's contents are within the 
                "prolog" folder"

b) INPUT

    > Prolog programs are rather command line intensive. It is important that you follow
    the suggested commands for each function.

    > Each program will require that you load the program's contents before you begin
    querying

    > Tasks

        (i) Task 1

            * Task 1 finds out whether a destination can be reached from a given
            origin through a series of given flights. The flight paths are:

                                pittsburg    -->   cleveland
                                philadelphia -->   pittsburgh
                                columbus     -->   philadelphia
                                sanFrancisco -->   columbus
                                detroit      -->   sanFrancisco
                                toledo       -->   detroit
                                houston      -->   toledo

            * You will first need to load the program, which is called "task1.pl". To do so,
            you will enter:

                    ?- ['task1'].


            * SWI-Prolog will respond with: true

            * At this point, you may query such things as:

                > Can I get from point X to Y?

                    ?- findFlight(X,Y).

                > What is the route from point X to Y?

                    ?- findRoute(X,Y).
                        
                        *This will display the route. You can see an example below.
        
        (ii) Task 2

            * Task two removes a specified integer from a list of integers.

            * You will first need to load the program, which is called "task2.pl". To do so,
            you will enter:

                    ?- ['task2'].

            * SWI-Prolog will respond with: true

            * At this point, you may query such things as:

                > Please remove A from list [X, X, A] and return the list in Result.

                    ?- toDelete(A, [X, X, X], Result).

                        *The function will display Result as

                    Result = [X, X]
                    true
                        
                        *There is an example of this below.

                > Please remove A from list [X, X, A] and return the list in Result and print
                the results to File

                    ?- toDelete(File, List, Elem, Result).

                        * This program will ask you to enter specific information. For instace, 
                        what is the file name; what is the list; what is the item you wish to remove?

                        * You will specifically enter this information in the following format:

                    When asked to enter file name: 
                                                                     'filename.txt'.
                    When asked to enter list:
                                                                     [#,#,#,#,#,#].
                    When asked to enter the item you wish to remove:
                                                                     #.

        (iii) Task 3

            * Task 3 is a sudoku puzzle solver. It solves sudoku puzzles that are 9x9 blocks.

            * Example sudoku puzzles that this program can solve are given in "testPuzzle.txt"

            * You will first need to load the program, which is called "task3.pl". To do so,
            you will enter:

                    ?- ['task3'].

            * SWI-Prolog will respond with: true

            * At this point, you may query such things as:

                > Please solve this puzzle P and give me the solution in S

                    ?- sudokuNine(
                    Puzzle,
                    Solution).

                        *Puzzle should be written in the format:

                    [A1, A2, A3, A4, A5, A6, A7, A8, A9,
                    B1, B2, B3, B4, B5, B6, B7, B8, B9,
                    C1, C2, C3, C4, C5, C6, C7, C8, C9,
                    D1, D2, D3, D4, D5, D6, D7, D8, D9,
                    E1, E2, E3, E4, E5, E6, E7, E8, E9,
                    F1, F2, F3, F4, F5, F6, F7, F8, F9,
                    G1, G2, G3, G4, G5, G6, G7, G8, G9,
                    H1, H2, H3, H4, H5, H6, H7, H8, H9,
                    I1, I2, I3, I4, I5, I6, I7, I8, I9]

                        *There is an example of this below.

c) SAMPLE TESTS

        (i) Task 1:


                    ?- ['task1'].
                    true.

                    ?- findFlight(houston, cleveland).
                    true .

                    ?- findRoute(houston, cleveland).
                    cleveland <-- pittsburgh <-- philadelphia <-- columbus <-- sanFrancisco <-- detroit <-- toledo <-- houston
                    true ;
                    false.

                    ?- findRoute(toledo, detroit).
                    detroit <-- toledo
                    true ;
                    false.


        (ii) Task 2:


                    ?- [task2].
                    true.

                    ?- myDelete(File,List,Elem,Results).
                    Please enter a file name: 'test1.txt'.

                    Please enter a list: |: [1,2,3,1,5,6,6,7,6].

                    Please enter an item you would like to remove: |: 6.

                    File = 'test1.txt',
                    List = [1, 2, 3, 1, 5, 6, 6, 7, 6],
                    Elem = 6,
                    Results = [1, 2, 3, 1, 5, 7] .

                    ?- myDelete(File,List,Elem,Results).
                    Please enter a file name: 'test2.txt'.

                    Please enter a list: |: [1,2,1,3,1,1,1,6,7,8,1].

                    Please enter an item you would like to remove: |: 1.

                    File = 'test2.txt',
                    List = [1, 2, 1, 3, 1, 1, 1, 6, 7|...],
                    Elem = 1,
                    Results = [2, 3, 6, 7, 8] .


        (iii) Task 3:


                    ?- ['task3'].
                    true.

                    ?- sudokuNine(
                    [5, 3 , A3, 4 , A5, A6, A7, A8, 2 ,
                    B1, 6 , B3, B4, 2 , 8 , B7, B8, B9,
                    C1, C2, C3, C4, 3 , C6, C7, 5 , C9,
                    8 , D2, 7 , D4, D5, D6, 1 , 2 , D9,
                    E1, E2, E3, E4, E5, E6, E7, E8, E9,
                    F1, 4 , 2 , F4, F5, F6, 3 , F8, 5 ,
                    G1, 7 , G3, G4, 6 , G6, G7, G8, G9,
                    H1, H2, H3, 2 , 1 , H6, H7, 8 , H9,
                    2 , I2, I3, I4, I5, 3 , I7, 9 , 1 ],
                    Solution).

                    Solution is:[5,3,1,4,9,7,8,6,2,9,6,4,5,2,8,7,1,3,7,2,8,1,3,6,4,5,9,8,9,7,3,5,4,1,2,6,3,1,5,6,7,2,9,4,8,6,4,2,9,8,1,3,7,5,1,7,9,8,6,5,2,3,4,4,5,3,2,1,9,6,8,7,2,8,6,7,4,3,5,9,1]
                    A3 = B8, B8 = C4, C4 = E2, E2 = F6, F6 = G1, G1 = 1,
                    A5 = B1, B1 = C9, C9 = D2, D2 = E7, E7 = F4, F4 = G3, G3 = H6, H6 = 9,
                    A6 = B7, B7 = C1, C1 = E5, E5 = F8, F8 = H9, H9 = I4, I4 = 7,
                    A7 = C3, C3 = E9, E9 = F5, F5 = G4, G4 = I2, I2 = 8,
                    A8 = C6, C6 = D9, D9 = E4, E4 = F1, F1 = H7, H7 = I3, I3 = 6,
                    B3 = C7, C7 = D6, D6 = E8, E8 = G9, G9 = H1, H1 = I5, I5 = 4,
                    B4 = D5, D5 = E3, E3 = G6, G6 = H2, H2 = I7, I7 = 5,
                    B9 = D4, D4 = E1, E1 = G8, G8 = H3, H3 = 3,
                    C2 = E6, E6 = G7, G7 = 2,
                    Solution = [5, 3, 1, 4, 9, 7, 8, 6, 2|...] .

                    ?- sudokuNine(
                    [7, A2, A3, A4, A5, 4 , 5 , A8, 1 ,
                    9 , B2, B3, B4, B5, 8 , B7, B8, B9,
                    2 , 8 , C3, C4, 6 , C6, 7 , C8, C9,
                    D1, 1 , D3, 8 , D5, D6, 4 , D8, D9,
                    E1, E2, E3, E4, 7 , E6, E7, E8, E9,
                    F1, F2, 7 , F4, F5, 9 , F7, 2 , F9,
                    G1, G2, 9 , G4, 8 , G6, G7, 1 , 5 ,
                    H1, H2, H3, 5 , H5, H6, H7, H8, 4 ,
                    3 , I2, 5 , 1 , I5, I6, I7, I8, 8 ],
                    Solution).

                    Solution is: [7,6,3,9,2,4,5,8,1,9,5,4,7,1,8,6,3,2,2,8,1,3,6,5,7,4,9,5,1,6,8,3,2,4,9,7,4,9,2,6,7,1,8,5,3,8,3,7,4,5,9,1,2,6,6,4,9,2,8,7,3,1,5,1,7,8,5,9,3,2,6,4,3,2,5,1,4,6,9,7,8]
                    A2 = B7, B7 = D3, D3 = E4, E4 = F9, F9 = G1, G1 = H8, H8 = I6, I6 = 6,
                    A3 = B8, B8 = C4, C4 = D5, D5 = E9, E9 = F2, F2 = G7, G7 = H6, H6 = 3,
                    A4 = C9, C9 = D8, D8 = E2, E2 = H5, H5 = I7, I7 = 9,
                    A5 = B9, B9 = D6, D6 = E3, E3 = G4, G4 = H7, H7 = I2, I2 = 2,
                    A8 = E7, E7 = F1, F1 = H3, H3 = 8,
                    B2 = C6, C6 = D1, D1 = E8, E8 = F5, F5 = 5,
                    B3 = C8, C8 = E1, E1 = F4, F4 = G2, G2 = I5, I5 = 4,
                    B4 = D9, D9 = G6, G6 = H2, H2 = I8, I8 = 7,
                    B5 = C3, C3 = E6, E6 = F7, F7 = H1, H1 = 1,
                    Solution = [7, 6, 3, 9, 2, 4, 5, 8, 1|...].


