Check 6620D5CA
Auto 8224

# Run-time Variables

Var y: Num = 176
Var x: Num = 28
Var a: Num = 23310
Var w: Num = 1
Var ys: Num = 2
Var xs: Num = 1
Var cs: Num = 8
Var m: NumFOR = 26, 25, 1, 3030, 2
Var p$: Str = "Press any key to continue"
Var f$: StrArray(5100) = " \#00011f2Generates pseudo-random number'between 0 and 1\#00018f3Reads keyboard and gives'character produced by key'currently being pressed\#00010f3The ratio of circumference'of a circle to its diameter'(=3.1415927 approx.)\#000 9f2Calls user-defined function'(see DEF FN)\#00017f3POINT (x,y) tells whether pixel'at x,y is ink or paper colour'(0 = paper, 1 = ink)\#00020f3SCREEN$ (l,c) gives character'at line l, column c, of screen'Also used with SAVE etc.\#00016f3ATTR (l,c) gives attribute byte'(FLASH, BRIGHT, PAPER & INK)'at line l, column c\#00015n3AT l,c sets PRINT and INPUT'position to line l,column c'of screen\#00015n2TAB c moves PRINT or INPUT'position to column c\#000 9f2Strips quotes from string,'evaluates as a string\#00014f3CODE s gives the code of the'first character of string s'Also used with SAVE etc.\#000 9f2Strips quotes from string and'evaluates as an expression\#000 9f1Gives length of string\#00010f2Trigonometric sine function'Argument in radians\#00010f2Trigonometric cosine function'Argument in radians\#00010f2Trigonometric tan function'Argument in radians\#00010f1Trigonometric arcsine function\#00010f1Trigonometric arccos function\#00010f1Trigonometric arctan function\#00010f1Natural logarithm to base e\#00010f1Raises argument to power of e\#000 9f2Gives integer part of numerical'argument (always rounds down)\#000 9f1Gives square root of argument\#000 9f2SGN n =1 if n>0, 0 if n=0 and'-1 if n<0\#000 9f1ABS n gives positive value of n\#00014f2Gives the contents of a single'byte of memory\#00023f2Same as PEEK, for input-output'ports\#00014f3USR "a" gives start address of'user defined graphic a'Also used for machine-code Ch.17\#000 9f2STR$ n gives string that would'appear if n were PRINTed\#00014f2CHR$ n gives character whose'code is n\#00013n2Used in IF statements to reverse'true and false\#00014f2Used to express numbers'in binary form\#00013n2Logical "or", usually used'in IF statements\#00013n2Logical "and", usually used'in IF statements\#000 3n2"Less than or equal to"'Mainly used in IF statements\#000 3n2"Greater than or equal to"'Mainly used in IF statements\#000 3n2"Not equal to"'Mainly used in IF statements\#00020f3SAVE <name> LINE n: will GO TO n'after LOAD has completed'Also used with INPUT Ch.15\#000 3n2Must always follow the condition'in an IF statement\#000 4n3Separates initial value & limit'in FOR-NEXT loops and string'slicing (Chap.12)\#000 4n3Sets the amount added to the'counting variable after each'loop in FOR-NEXT loops\#000 9c3Allows you to define'your own functions'(see FN)\#00022c1For use with microdrive etc.\#00022c1For use with microdrive etc.\#00022c1For use with microdrive etc.\#00022c1For use with microdrive etc.\#00022c1For use with microdrive etc.\#00022c1For use with microdrive etc.\#00020c3Loads program without deleting'existing one (except for line'numbers which overlap)\#00020c3Used to check that'a program on tape  will LOAD'successfully\#00019c1Sounds the loudspeaker\#00017c2CIRCLE x,y,r draws a circle with'centre x,y and radius r\#00016c3Sets ink colour on screen'Can also be used inside other'statements, as in PRINT INK n\#00016c3Sets paper colour on screen'Can also be used inside other'statements, as in PRINT PAPER n\#00016c3Determines whether characters on'screen will flash or be steady'Use in the same way as INK\#00016c3Determines whether characters on'screen will be bright or normal'Use in the same way as INK\#00016c2Controls inverse or normal video'of screen characters\#00016c2Controls overprinting of'screen characters\#00023c2Same as POKE, used with input-'output ports\#00021c2As with PRINT, but uses'ZX printer instead of screen\#00021c2As with LIST, but uses'ZX printer instead of screen\#000 2c1Stops the program\#000 6c2READ v assigns to variable v'the next item in a DATA command\#000 6c3Sets up a list of data items'for READ command'Also used with SAVE etc.\#000 6c3RESTORE n will reset pointer for'next READ to first DATA item'after line number n\#000 2c2Erases all programs'and variables\#00016c1Sets border colour\#000 2c2Continues program after error'from line where error occurred\#00012c1Sets the dimension of an array\#000 2c2For comments: anything after it'is ignored until next line\#000 4c1First command in FOR-NEXT loop\#000 2c2GO TO n causes program to jump'to line number n\#000 5c3GO SUB n causes a jump to line n'When a RETURN is found, program'returns to command after GO SUB\#00015c2Allows data to be entered into'a variable from the keyboard\#00020c3Loads program from cassette'and clears existing programs'and variables\#000 2c2LIST n displays program listing'on screen from line number n\#000 2c1Assigns a value to a variable\#00018c2Halts program for specified time'(pressing a key resumes)\#000 4c1Last command in FOR-NEXT loop\#00014c2POKE a,n sets value of byte at'address a to value n\#000 2c1Used to display items on screen\#00017c2PLOT x,y sets pixel at x,y'to ink colour\#000 2c2RUN n clears all variables and'executes program from line n\#00020c2Stores program and variables'on cassette\#00011c3Sets RND to start at a specified'place in its sequence'of random numbers\#000 3c2Used with THEN'to execute code conditionally\#000 3c1Clears the screen\#00017c2Draws straight or curved lines'from current position\#00024c1Clears all variables in memory\#000 5c2Defines end of subroutine'(see GOSUB)\#00021c1Copies the screen to the printer\#000                                                                               "

# End Run-time Variables

  10 BORDER 1: PAPER 1: INK 7: CLS : PRINT AT 6,0;"THIS PROGRAM IS INTENDED AS A   GUIDE TO THE KEYWORDS USED BY       THE SPECTRUM BASIC";''';"IT PROVIDES A BRIEF DESCRIPTION OF EACH KEYWORD AS YOU ENTER IT"'''
  20 PRINT "  Simply enter the keyword of     your choice as you would in     BASIC, using extended mode         in the normal way"
  40 LET c=0: PRINT AT 21,0; FLASH 1;"K"
 100 POKE 23617,0
 104 POKE 23560,0
 110 LET i=PEEK 23560: IF i<>14 THEN GO TO 114
 112 IF PEEK 23617=0 THEN POKE 23617,1: PRINT AT 21,c; FLASH 1;"E": GO TO 104
 113 GO TO 40
 114 IF i=10 THEN GO TO 9996
 116 IF i>96 AND i<123 THEN LET i=i+133
 120 IF i<165 OR i>255 THEN GO TO 110
 124 LET f$(1)=CHR$ (i-164): LET s=USR 32560
 130 CLS : PRINT AT 21,0;CHR$ i; FLASH 1;"L";: LET c=32-PEEK 23688
 134 LET p$=""
 140 FOR n=0 TO c-1
 150 LET i$= SCREEN$ (21,n)
 160 IF i$=" " AND (n=0 OR n=c-1) THEN GO TO 170
 164 LET p$=p$+i$
 170 NEXT n
 200 LET lp=LEN p$*24: LET x=(256-lp)/2
 210 PLOT x-4,170: DRAW lp+8,0: DRAW 0,-30: DRAW -lp-8,0: DRAW 0,30
 214 LET y=8: LET xs=3: LET ys=3: LET cs=8
 220 GO SUB 3000
 330 LET p$="CHAPTER "+f$(s TO s+1)+" OF MANUAL": LET x=1: LET y=134: LET xs=1: LET ys=2: GO SUB 3000
 332 LET y=152: LET ys=1: LET x=1: LET p$="CAPS SHIFT-6 TO STOP": GO SUB 3000: PLOT 0,15: DRAW 161,0: DRAW 0,9: DRAW -161,0: DRAW 0,-9
 333 LET ys=2
 334 IF f$(s+2)="f" THEN LET p$="TYPE OF KEYWORD: Function": LET y=44: GO SUB 3000
 336 IF f$(s+2)="n" THEN LET y=30
 338 IF f$(s+2)="c" THEN LET p$="TYPE OF KEYWORD: Command": LET y=44: GO SUB 3000
 340 LET n=s+3: LET ll=VAL f$(n): LET y=y+(3-ll)*12
 350 FOR t=1 TO ll
 370 LET n=n+1: GO SUB 1000
 380 LET x=(256-8*LEN p$)/2
 390 LET y=y+20: GO SUB 3000
 400 NEXT t: PRINT AT 21,0;"            ": GO TO 30
1000 LET p$=""
1010 IF f$(n)=CHR$ 0 OR f$(n)="'" THEN RETURN
1020 LET p$=p$+f$(n): LET n=n+1: GO TO 1010
2990 LET x=(256-cs*xs*LEN p$)/2
3000 LET a=23306
3010 POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs
3020 LET a=a+4: LET w=LEN p$
3030 FOR m=1 TO w: POKE a+m, CODE p$(m): NEXT m
3040 POKE a+w+1,255: LET w=USR 32256: RETURN
8000 FOR n=0 TO 20: PRINT PEEK (32560+n): NEXT n: STOP
9980 CLEAR 32255: LOAD "d" CODE : LOAD "file" DATA f$()
9985 BORDER 5: PAPER 5: INK 0: CLS : LET ys=2: LET xs=2: LET y=104: LET cs=8: LET p$="STOP THE TAPE": FLASH 1: GO SUB 2990: FLASH 0
9987 LET y=16: LET xs=3: LET ys=3: LET p$="KEYWORD": GO SUB 2990: LET y=52: LET p$="DICTIONARY":: GO SUB 2990
9988 LET y=148: LET xs=2: LET ys=2: LET p$="PSION  \*1982": INK 1: GO SUB 2990: INK 0
9989 LET y=176: LET xs=1: LET p$="Press any key to continue": GO SUB 2990: PAUSE 0: GO TO 1
9990 CLEAR : SAVE "dictionary" LINE 9980: SAVE "d" CODE 32256,400: STOP
9996 CLS : LET xs=2: LET ys=2: LET y=32: LET p$="END OF SIDE A": GO SUB 2990: LET y=104: LET p$="TURN TAPE OVER": GO SUB 2990: LET y=128: LET p$="REWIND & START": GO SUB 2990: LOAD "sideb"
