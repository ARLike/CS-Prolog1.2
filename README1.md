--------------------------------------------------------------
| PROGRAMMER: Alexandrea Like                                |
| CLASS:      CS 3060, section 1001                          |
| TEACHER/TA: Dr. Sankardas Roy/Sunil                        |
| ASSIGNMENT: Assignment1 - Prolog; function 1-3               |
| DUE:        Feb. 2, 2017                                   |
--------------------------------------------------------------
|TABLE OF CONTENTS:                            |
------------------------------------------------
| (a) how to run program                       |
| (b) input                                    |
|     (i)   Program 1                          |
|     (ii)  Program 2                          |
|     (iii) Program 3                          |
| (c) sample tests                             |
|     (i)   Program 1                          |
|     (ii)  Program 2                          |
|     (iii) Program 3                          |
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

                > Make sure that you are in the "Assignment1-Prolog" directory before
                entering swipl command. To check this, enter:
                            pwd
            - Windows:

                > Make sure the "Assignment1-Prolog" folder's contents are within the 
                "prolog" folder"

b) Input

    > Prolog programs are rather command line intensive. It is important that you follow
    the suggested commands for each function.

    > Each program will require that you load the program's contents before you begin
    querying

    > Functions

        (i) Program 1

            * Program one is a neighborhood database that allows you to query things related
            to neighboor relationships and positioning. You're households are:

                - adams       |R|       - flores
                - brown       |O|       - green
                - clark       |A|       - hermandez
                - davis       |D|       - iller
                - evans       | |       - johnson

            * You will first need to load the program, which is called "task1". To do so,
            you will enter:

                    ?- ['task1'].

            * SWI-Prolog will respond with: true

            * At this point, you may query such things as:

                > Who's on which side of the street?

                    ?- sides(X,Y,Z,Q,W).

                > Who's on the left/right side of a household?

                    ?- left(X,Y).
                    ?- right(X,Y).

                > Who's across the street from who?

                    ?- across(X,Y).
                        >checks who's across from an X or Y

                    ?- acrossL(X,Y).
                        >will provide a list of the street's positioning and who's across
                        from who

        (ii) Program 2

            * Program two returns the largest integer in a list. To do this, you will need
            to provide a list with each query.

            * You will first need to load the program, which is called "task2". To do so,
            you will enter:

                    ?- ['task2'].

            * At this point, you may query such things as:

                > What's the maximum number of a list "numbers"?

                    ?- findMax(X, [numbers]).
                        > you will replace "numbers" with an actual list of integers 
                        that are delimited by commas

        (iii) Program 3

            * Program three finds out whether a destination can be reached from a given
            origin through a series of given flights. The flight paths are:

                                 pittsburg    -->   cleveland
                                 philadelphia -->   pittsburgh
                                 columbus     -->   philadelphia
                                 sanFrancisco -->   columbus
                                 detroit      -->   sanFrancisco
                                 toledo       -->   detroit
                                 houston      -->   toledo

            * You will first need to load the program, which is called "task3". To do so,
            you will enter:

                    ?- ['task3'].

            * At this point, you may query such things as:

               > Can I get from point X to Y?

                    ?- findFlight(X,Y).

c) Sample tests

        (i) Program 1

?- ['task1'].
true.

?- right(Who, brown).
Who = clark.

?- left(Who, brown).
Who = adams.

?- neighbors(brown, Who).
Who = adams ;
Who = clark.

?- neighbors(Who, green).
Who = hermandez ;
Who = flores.

?- sides(First, Second, Third, Fourth, Fifth).
First = adams,
Second = brown,
Third = clark,
Fourth = davis,
Fifth = evans ;
First = flores,
Second = green,
Third = hermandez,
Fourth = iller,
Fifth = johnson .

?- across(hermandez,_).
true .

?- across(hermandez,Who).
Who = clark ;
false.

?- across(hermandez,davis).
false.

?- across(hermandez,clark).
true .

?- acrossL(TheseGuys, AreAcrossFromTheseGuys).
TheseGuys = adams,
AreAcrossFromTheseGuys = flores ;
TheseGuys = brown,
AreAcrossFromTheseGuys = green ;
TheseGuys = clark,
AreAcrossFromTheseGuys = hermandez ;
TheseGuys = davis,
AreAcrossFromTheseGuys = iller ;
TheseGuys = evans,
AreAcrossFromTheseGuys = johnson ;
false.

        (ii) Program 2

?- ['task2'].
true.

?- findMax(Max, [1,2,3,4,5,6]).
Max = 6 .

?- findMax(Max, [6,2,3,4,5]).
Max = 6 .

?- findMax(Max, [8,8,5,7,2,3,3]).
Max = 8 .

?- findMax(Max, [1,1,1,1,6,1]).
Max = 6 .

        (iii) Program 3

?- ['task3'].
true.

?- findFlight(toledo,detroit).
true .

?- findFlight(columbus,detroit).
false.

?- findFlight(detroit, toledo).
false.

?- findFlight(detroit, WhereCanIGoFromThere).
WhereCanIGoFromThere = sanFrancisco ;
WhereCanIGoFromThere = columbus ;
WhereCanIGoFromThere = philadelphia ;
WhereCanIGoFromThere = pittsburgh ;
WhereCanIGoFromThere = cleveland ;
false.

?- findFlight(FromWhereCanIGetToThere, pittsburgh).
FromWhereCanIGetToThere = philadelphia ;
FromWhereCanIGetToThere = columbus ;
FromWhereCanIGetToThere = sanFrancisco ;
FromWhereCanIGetToThere = detroit ;
FromWhereCanIGetToThere = toledo ;
FromWhereCanIGetToThere = houston ;
false.



