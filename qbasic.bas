DECLARE SUB menu (yu$)

DECLARE SUB add (yu$)

1

DECLARE SUB display (yu$)

DECLARE SUB search (yu$)

DECLARE SUB edit(yu$)

DECLARE SUB delete(yu$)

DECLARE SUB drawbox(yu$)

COLOR 5,15

CLS

DO

CALL menu

LOCATE 14, 48

INPUT ch

SELECT CASE ch

CASE 1

CALL add(a$, rt, ry, ru, ri, re, rw, rv, rn, rm, rz)

CASE 2

CALL display(a$, rt, ry, ru, ri, re, rw, rv, rn, rm, rz)

CASE 3

CALL search(a$, rt, ry, ru, ri, re, rw, rv, rn, rm, rz)

4

CALL edit(a$, rt, ry, ru, ri, re, rw, rv, rn, rm, rz)

CASE 5

CALL delete(a$, rt, ry, ru, ri, re, rw. rv, rn, rm, rz)

END SELECT

LOOP WHILE ch <> 6
INPUT "ENTER NAME TO SERACH DATA"; BG$

LOCATE 12, 25

INPUT "ENTER ROLL NO ": BN

CHRIST = 0

DO

INPUT #1. N$. C. e, n, m, sc, ss, eph, op1, op2, per IF UCASE$(BG$) = UCASE$(N$) AND BN = C THEN

CLS

PRINT TAB(30): "MARK SHEET"

PRINT TAB(30); "*********

PRINT

PRINT

PRINT TAB (15): "NAME:": N$

PRINTTAB(15); "ROLL NO:"; C

PRINT

PRINT

PRINT TAB(30): "MARKS"

PRINT

PRINT TAB(12): "English:"; e: TAB (35): "Nepali"; n

PRINT

PRINT TAB (12); "Maths:"; m; TAB (35); "Science:"; sc

PRINT

PRINT TAB(12); "Social:"; ss; TAB(35); "EPH:": eph

PRINT

PRINT TAB (12); "OPT-I:": op1; TAB(35); "OP-2:"; op2

PRINT TAB(12): "%:": per
CLS

LOCATE 10

"RECORD DELETED"

IF

WHILE NOT EOF(1)

#1, #2

KILL "school.dat"

NAME "temp.dat" "school.dat"

CALL display(a$. ry, ru, ri, re, rw, rv, rn, rm, rz)

SUB

SUB drawbox

LOCATE 30

PRINT STRING$(30, "!")

I=11 TO 15

LOCATE 30: PRINT "!"

LOCATE 59: PRINT "!"

NEXTI

LOCATE 30

PRINT STRING$(30, "!")

END SUB

SUB search (a$, ry, ru, re, rw. rv. rn, rm, rz)

OPEN "school.dat" FOR INPUT AS #1

CLS

LOCATE 15

PRINT "SEARCH MODE"

LOCATE 10, 25
CLS

LOCATE 4, 15

PRINT STRING$(41. "!")

FOR 1-5 TO 17

LOCATE 1, 15: PRINT "!"

LOCATE 1, 55: PRINT "!"

NEXTI

LOCATE 17.15

PRINT STRING$(40,"!")

LOCATE 5, 33

PRINT "Good bye"

LOCATE 8, 30

PRINT "SEE YOU AGAIN"

PRINT

PRINT

LOCATE 10, 30

PRINT "PROGRAMMER:"

LOCATE 12, 20

PRINT "Aakriti Binda Shreya"

LOCATE 13, 20

PRINT "Aaistha Anuza Sadikshya"

LOCATE 14, 20

PRINT "Smriti Manisha Yubina"

LOCATE 15, 20

PRINT "Sagar Dorje"

END
SUB add (a$. rt. ry, ru, ri, re, rw. rv, rn, rm, rz)

OPEN "school.dat" FOR APPEND AS #1

top:

KIZ:

CLS

COLOR O

LOCATE 2, 30

c=c+1

PRINT "APPEND RECORDS"

LOCATE 3.30

PRINT"*

LOCATE 4, 25

INPUT "ENTER NAME": N$

LOCATE 5, 25

PRINT "YOUR ROLL NO": c

TOP1:

LOCATE 6, 10

INPUT "ENTER MARKS OF ENGLISH:"; e

IFe>100 OR e < 0 THEN

LOCATE 6.39

PRINT "INVALID DATA ENTER

GOTO TOP1

END IF

TOP2:

LOCATE 7, 10

INPUT "ENTER THE MARKS OF NEPALI:": n
IF n>100 OR n 0 THEN

LOCATE 7, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP2

END IF

TOP3:

LOCATE 8, 10

INPUT "ENTER THE MARKS OF MATHS:"; m

IF m 100 OR m < 0 THEN

LOCATE 8, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP3

END IF

TOP4:

LOCATE 9.10

INPUT "ENTER THE MARKS OF SCIENCE:"; sc

IF sc > 100 OR sc < 0 THEN

LOCATE 9, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP4

END IF

TOP5:

LOCATE 10, 10

INPUT "ENTER THE MARKS OF SOCIAL:"; SS

IF ss 100 OR ss < 0 THEN

LOCATE 10, 39

PRINT "INVALID DATA ENTER 1-100"
GOTO TOP5

END IF

TOP6:

LOCATE 11, 10

INPUT "ENTER THE MARKS OF EPH:", eph

IF eph100 OR eph < 0 THEN

LOCATE 11, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP6

END IF

TOP7:

LOCATE 12, 10

INPUT "ENTER THE MARKS OF OPT-1:"; op1

IF op1> 100 OR op2 < 0 THEN

LOCATE 12, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP7

END IF

LOCATE 13, 10

INPUT "ENTER THE MARKS OF OPT-2:": op2

IF op2> 100 OR op2 < 0 THEN

LOCATE 13, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP8

END IF

tot=n+m+e+sc + ss + eph + op1 + op2
per=tot/8

IFe32 AND n 32 AND m32 AND sc 32 AND ss 32 AND eph 32 AND ap1 32 AND op2 32 THEN

IF per 80 THEN div$="dist"

IF per 60 AND per 80 THEN div$ = "Ist"

IF per 45 AND per 60 THEN div$ = "2nd"

IF per 45 AND per 32 THEN div$ = "3rd"

ELSE

div$="fail"

END IF

WRITE #1. UCASE$(N$). c. e. n. m. sc. ss. eph, oplop2. per

CLS

PRINT

PRINT TAB(30). "MARK SHEET"

PRINT TAB(30)

PRINT

PRINT TAB(15), "NAME": N$

PRINT TAB(15): "ROLL NO: c

PRINT

PRINT

PRINT TAB(30): "MARKS"

PRINT

PRINT TAB(12). "English": e: TAB(35), "Nepali", n

PRINT

PRINT TAB(12): "Maths: m: TAB(35). "Science" sc

PRINT

PRINT TAB(12); "Social" ss: TAB(35). "EPH:": eph

PRINT
DO

#1, NS. c. E. N. m, sc, ss, eph, op1, op2, per

CLS

TAB(30), "MARK SHEET"

PRINT TAB(30):

PRINT

PRINT

PRINT TAB(15); "NAME:"; N$

PRINT TAB(15): "ROLL NO:";

PRINT

PRINT

PRINTTAB(30); "MARKS"

PRINT

PRINT TAB(12); "English:"; TAB(35); "Nepali"; N

PRINT

PRINT (12); "Maths:"; m: TAB(35); "Science:"; sc

PRINT

PRINT (12): "Social:"; ss; TAB(35); "EPH:"; eph

PRINT

PRINT TAB(12); "OPT-I:"; op1: (35); "OP-2:": op2

PRINT

PRINT (12); "%:": per

INPUT "WANT TO DELETE THIS RECORD (Y/N)": LK$

IF UCASE$(LK$) "N" THEN

WRITE #2, N$, c. E, N, m, sc, ss, eph, op1, op2, per

ELSE
DO WHILE NOT EOF(1)

INPUT #1 NS. c. e. n. m. sc. sseph opl, op2. per

IFe 32 AND 32 AND m 32 AND sc32 AND ss 32 AND eph32 AND opt-32 AND op2 32 THEN

IF per 80 THEN div$-"dist"

IF per 60 AND per 80 THEN div$ = "Ist"

IF per 45 AND per 60 THEN div$-"2nd"

IF per <45 AND per 32 THEN div$-"3rD"

ELSE

div$ - "fail"

END IF

PRINT TAB (2): NS, TAB (11): c: TAB(15), e: TAB(19): n: TAB(24): m: TAB(29): sc. TAB(34): ss. TAB(39); eph: TAB(44); op1: TAB(49), op2: TAB(55): per: TAB(67); div$

LOOP

LOCATE 20, 5

PRINT "PRESS ANY KEY TO GOTO MAIN MENU"

X$ = INPUT$(1)

CLOSE #1

END SUB

SUB delete (a$, rt. ry, ru, ri, re, rw, rv, rn, rz)

ROS:

OPEN "school.dat" FOR INPUT AS #1

OPEN "temp.dat" FOR OUTPUT AS #2

CLS

LOCATE 12, 30

PRINT "Delete mode"

LOCATE 13, 30

PRINT
PRINT TAB(12). "OPT-1" op1. TAB(35): "OP-2", op2

PRINT

PRINT TAB(12). "%" per: TAB(35): "DIV div$

PRINT

PRINT TAB(25): "Here is it!!"

PRINT

PRINT

INPUT "PRESS X TO GOTO MAIN MENU AND Y TO GO TO ADD MORE: VFS IF UCASE$(VF$) - "X" THEN

CLOSE #1

CALL menu

END IF

IF UCASES (VF$)="Y" THEN GOTO KIZ

CLOSE #1

END SUB

SUB display (a$, rt, ry, ru. ri. re, rw, rv. rn, rm, rz)

OPEN "school dat" FOR INPUT AS #1

CLS

LOCATE 2.30

PRINT "OUTPUT SCREEN"

LOCATE 3,30

PRINT

PRINT: PRINT

PRINT TAB (2): "Name"; TAB (11); "RN": TAB(15), "ENG"; TAB (19); "NEP": TAB(24): "MATH": TAB(29); "SCI"; TAB(34): "SOC": TAB (39), "EPH"; TAB(44): "OP-I": TAB(49); "OP-II": TAB(55), "PER": TAB(67); "DIV"
LOCATE 5, 15 PRINT STRING$(41. "I")

FOR 1-6 TO 16

LOCATE 1, 15: PRINT "!"

LOCATE 1, 55: PRINT "!"

NEXTI

LOCATE 16, 15

PRINT STRING$(40. "I")

LOCATE 6. 30

PRINT "MAIN MENU!!!"

LOCATE 7.30

PRINT******

LOCATE 8, 20

PRINT "1.ADD RECORD"

LOCATE 9, 20

PRINT "2.DISPLAY RECORDS"

LOCATE 10, 20

PRINT "3.SEARCH RECORDS"

LOCATE 11, 20

PRINT "4.EDIT RECORD"

LOCATE 12, 20

PRINT "5.DELETE RECORDS"

LOCATE 13, 20

PRINT "6.EXIT"

LOCATE 14, 18

PRINT "ENTER YOUR CHOICE:1/2/3/4/5/6"

END SUB
NAME "temp.dat" AS "school.dat"

CALL display(a$. rt, ry, ru, ri, re, rw. rv. rn.rm.rz)

END SUB

SUB menu

CLS

LOCATE 5. 15

PRINT STRING$(41,"!")

FOR 1-6 TO 16

LOCATE 1, 15: PRINT "!"

LOCATE 1, 55: PRINT"!"

NEXTI

LOCATE 16, 15 PRINT STRING$(40. "!")

LOCATE 6. 30

LOCATE 10, 17 PRINT "LOADING"

SLEEP 1

LOCATE 10. 26

PRINT"....."

SLEEP 1

LOCATE 10, 29

PRINT"...."

SLEEP 1

LOCATE 10, 33

PRINT"....."

SLEEP 2

CLS
LOCATE 12. 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP7

END IF

TOP8:

LOCATE 13, 10

INPUT ENTER THE MARKS OF OPT-2:": Nop2

IF Nop2100 OR Nop2 - 0 THEN

LOCATE 13. 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOPB

END IF

NtotNn+Nm+Ne+ Nsc+Nss + Neph + Nop1+ Nop2

Nper Ntot/8

WRITE #2, UCASE$(NN$). NC. Ne. Nn. Nm. Nsc, Nss. Neph. Nopl. Nop2, Nper

CLS

CALL drawbox

PRINT "YOUR DATA IS EDITED!!!"

ELSE

WRITE #2. N$, c, e, N. m. sc, ss, eph, op1, op2. per

END IF

ELSE

WRITE #2, N$. c, e, N. m, sc, ss, eph, op1, op2, per

END IF

LOOP WHILE NOT EOF(1)

CLOSE #1, #2

KILL "school.dat"
LOCATE 9. 10

INPUT ENTER THE MARKS OF SCIENCE": Nsc

IF Nsc 100 OR Nsc 0 THEN

LOCATE 9,39

LOCATE 10, 10

PRINT "INVALID DATA ENTER 1-100" GOTO TOP4 END IF TOP5: PRINT "INVALID DATA ENTER 1-100" GOTO TOP5 END IF TOP6

INPUT "ENTER THE MARKS OF SOCIAL": Nss

IF Nss 100 OR Nss < 0 THEN

LOCATE 10. 39

LOCATE 11, 10

INPUT "ENTER THE MARKS OF EPH:": Neph

IF Neph > 100 OR Neph < 0 THEN

LOCATE 11, 39

"INVALID DATA ENTER 1-100"

GOTO TOP6

END IF

TOP7:

LOCATE 12, 10

INPUT "ENTER THE MARKS OF OPT-1:": Nop1

IF Nop1> 100 OR Nop2 < 0
LOCATE 5.25

PRINT "YOUR ROLL NO IS:C

TOP1

LOCATE 6, 10

INPUT "ENTER MARKS OF ENGLISH.": Ne

IF Ne 100 OR Ne <0 THEN

LOCATE 6, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP1

END IF

TOP2:

LOCATE 7, 10

INPUT "ENTER THE MARKS OF NEPALI:": Nn

IF Nn 100 OR Nn < 0 THEN

LOCATE 7,39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP2

END IF

TOP3:

LOCATE 8, 10 INPUT "ENTER THE MARKS OF MATHS:": Nm

IF Nm > 100 OR Nm < 0 THEN

LOCATE 8, 39

PRINT "INVALID DATA ENTER 1-100"

GOTO TOP3

END IF

TOP4:
CLS

INPUT #1. N$. c. e. N. m. sc. ss. eph. opl. op2, per IF UCASES(NSS)-NS AND NC-THEN

LOCATE 2. 30

PRINT "Edit mode!!!"

PRINT PRINT PRINT

LOCATE 3.30 PRINT******

PRINT TAB(1): "Name": TAB (10), "RN": TAB(13). "ENG" TAB(18): "NEP" TAB(23):

"SCI": TAB(33): "SOC" TAB(38): "EPH" TAB(43). "OP-I" TAB(48) "OP-II": TAB(54). "PER": TAB(65): "DIV"

PRINT

IFe> 32 AND N 32 AND m32 AND sc 32 AND ss 32 AND eph >= 32 AND op1>= 32 AND THEN

IF per 80 THEN div$ = "dist"

IF per 60 AND per 80 THEN div$ = "Ist"

IF per 45 AND per < 60 THEN div$ = "2nd"

IF per 45 AND per >= 32 THEN div$ = "3rd"

ELSE

div$ = "fail"

END IF

PRINT TAB(1): N$. TAB(10). c. TAB (13): e: TAB(18). N. TAB(23): m: TAB(28); sc; TAB(33): ss: TAB(38), eph: TAB (43): op1. TAB (48), op2: TAB(54), per: TAB (65) div$

PRINT: PRINT

INPUT "are you sure to edit Y/N": gh$

IF UCASE$(gh$) = "Y" THEN

CLS

LOCATE 4. 25

INPUT "ENTER NAME:", NN$

YU = YU+1
CHRIST=1 END IF

LOOP WHILE NOT EOF(1)

PRINT

IF CHRIST = 0 THEN

CLS

CALL drawbox LOCATE 12, 34: PRINT "DATA NOT FOUND"

END IF X$ = INPUT$(1)

CLOSE #1

END SUB

SUB edit (a$, rt, ry, ru, ri, re, rw, rv, rn, rm, rz)

GHY:

OPEN "school.dat" FOR INPUT AS #1

OPEN "temp.dat" FOR OUTPUT AS #2

CLS

LOCATE 12, 30

PRINT "EDIT-MODE!!!"

LOCATE 13, 30

PRINT ***********

LOCATE 15, 30

INPUT "ENTER NAME EDIT:::": NS$

LOCATE 17, 30

INPUT "ENTER ROOL NO"; NC

CLS

DO
