Check 3CAAF9AD
Auto 8224

# Run-time Variables

Var x: Num = 40
Var y: Num = 136
Var a: Num = 23310
Var w: Num = 2
Var xs: Num = 2
Var ys: Num = 2
Var cs: Num = 8
Var v: NumFOR = 13, 12, 1, 9400, 10
Var d$: Str = "PSION \* 1982"

# End Run-time Variables

   2 GO SUB 2000: PAUSE 0
   3 CLEAR : GO SUB 3100: PAUSE 0
   4 CLEAR : GO SUB 3000: PAUSE 0
   5 CLEAR : GO SUB 3400: PAUSE 0
   6 CLS
   9 DIM I$(13): DIM s$(13): DIM n$(13): DIM c$(13)
  10 FOR i=1 TO 13
  20 LET card=1+INT (RND*52)
  30 FOR j=1 TO i
  40 IF  CODE I$(j)=card THEN GO TO 20
  50 NEXT j
  60 LET I$(i)=CHR$ card
 110 LET s=INT ((card-1)/13)
 120 LET s$(i)=CHR$ 146: LET c$(i)=CHR$ 0
 130 IF s=1 THEN LET s$(i)=CHR$ 147: LET c$(i)=CHR$ 2
 140 IF s=2 THEN LET s$(i)=CHR$ 151: LET c$(i)=CHR$ 2
 150 IF s=3 THEN LET s$(i)=CHR$ 162
 160 LET n=card-s*13
 170 IF n>=1 AND n<=8 THEN LET n$(i)=CHR$ (49+n)
 180 IF n=13 THEN LET n$(i)=CHR$ 65
 190 IF n=9 THEN LET n$(i)=CHR$ 163
 200 IF n=10 THEN LET n$(i)=CHR$ 74
 210 IF n=11 THEN LET n$(i)=CHR$ 81
 220 IF n=12 THEN LET n$(i)=CHR$ 75
 230 NEXT i
 400 PAPER 7: BORDER 4: INK 0
 401 CLS
 402 PAPER 4: PRINT AT 0,0;: FOR i=0 TO 3: PRINT "                                ": NEXT i
 404 FOR i=15 TO 21: PRINT AT i,0;"                                ": NEXT i
 405 INK 7: PRINT AT 3,0: FOR i=1 TO 11: PRINT "\ :": NEXT i: PAPER 7: INK 0
 420 PLOT 4,55: DRAW 251,0: DRAW 0,89: DRAW -251,0
 470 FOR x=19 TO 195 STEP 16: PLOT x,55: DRAW 0,88: NEXT x
 510 FOR l=0 TO 12: LET x=2*l+1: PRINT AT 4,x; INK  CODE c$(l+1);n$(l+1): PRINT AT 5,x; INK  CODE c$(l+1);s$(l+1): NEXT l
 555 GO SUB 8000
 711 PAUSE 600
 712 LET t=12
 720 FOR e=1 TO 15
 725 PRINT AT 0,13; INK 0; INVERSE 1;"Pass ";e: PRINT INK  CODE c$(1); OVER 1; FLASH 1;AT 4,1;" ": PRINT INK  CODE c$(1); OVER 1; FLASH 1;AT 5,1;" "
 800 FOR f=1 TO t
 820 LET x=2*f+1: PRINT ; INK  CODE c$(f+1); OVER 1; FLASH 1;AT 4,x;" ": PRINT INK  CODE c$(f+1); OVER 1; FLASH 1;AT 5,x;" "
 834 PAUSE 30
 840 IF I$(f)>I$(f+1) THEN GO TO 1000
 845 PAUSE 70
 860 LET u= CODE i$(f): LET v= CODE s$(f): LET w= CODE n$(f): LET c1= CODE c$(f): LET I$(f)=I$(f+1): LET s$(f)=s$(f+1): LET n$(f)=n$(f+1): LET c$(f)=c$(f+1): LET i$(f+1)=CHR$ u: LET s$(f+1)=CHR$ v: LET n$(f+1)=CHR$ w: LET c$(f+1)=CHR$ c1
1000 PRINT AT 4,x-2; INK  CODE c$(f); FLASH 0;n$(f): PRINT AT 5,x-2; INK  CODE c$(f); FLASH 0;s$(f): PRINT AT 4,x; INK  CODE c$(f+1); FLASH 1;n$(f+1): PRINT AT 5,x; INK  CODE c$(f+1); FLASH 1;s$(f+1)
1012 LET x1=x
1100 NEXT f
1101 IF t<12 THEN GO TO 1110
1105 GO SUB 8000
1110 PRINT OVER 1; INK  CODE c$(t+1); FLASH 0;AT 4,x1;" ": PRINT OVER 1; INK  CODE c$(t+1); FLASH 0;AT 5,x1;" "
1150 FOR g=1 TO 12
1151 IF I$(g)<I$(g+1) THEN GO TO 1196
1152 NEXT g
1170 INK 0: PRINT AT 20,0;"Sorted - press y to run again"'"or any other key to continue."
1177 IF INKEY$<>"" THEN GO TO 1177
1180 POKE 23560,0
1181 LET z=PEEK 23560: IF z=0 THEN GO TO 1181
1182 LET z$=CHR$ z
1184 IF z$="y" THEN CLS : GO TO 10
1195 PRINT AT 20,0;"O.K. - start the tape        "'"Loading evolution            ": LOAD "evolution"
1196 LET t=t-1
1200 NEXT e
1210 GO TO 1170
2000 BORDER 1: PAPER 1: INK 7: CLS : PRINT AT 13,10; FLASH 1;"STOP THE TAPE": LET d$="BUBBLE": LET xs=3: LET ys=3: LET cs=8: LET x=64: LET y=0: GO SUB 9400: LET d$="SORT": LET x=88: LET y=32: GO SUB 9400
2010 PRINT AT 9,0;"  A SORTING ALGORITHM APPLIED         TO A HAND OF CARDS"
2030 LET d$="PSION \* 1982": LET xs=2: LET ys=2: LET cs=8: LET x=40: LET y=136: GO SUB 9400
2040 PRINT AT 21,3;"PRESS ANY KEY  TO CONTINUE"
2050 RETURN
3000 REM
3010 LET r=1: GO SUB 3500
3020 PRINT AT 2,17;"\::6\:: \::3\:: \::8\:: \::2\::": PRINT AT 2,0;"Compare 6&3": PRINT AT 3,0;"Swap?-yes (6>3)": LET r=3: GO SUB 3500
3040 LET r=5: GO SUB 3500
3045 PRINT AT 6,17;"\::3\:: \::6\:: \::8\:: \::2\::": LET r=7: GO SUB 3500: PRINT AT 6,0;"Compare 6&8": PRINT AT 7,0;"Swap?-no (6<8)": LET r=9: GO SUB 3500
3051 LET r=9: GO SUB 3500
3052 PRINT AT 10,17;"\::3\:: \::6\:: \::8\:: \::2\::": LET r=11: GO SUB 3500: PRINT AT 10,0;"Compare 8&2": PRINT AT 11,0;"Swap?-yes": LET r=13: GO SUB 3500
3058 PRINT AT 14,17;"\::3\:: \::6\:: \::2\:: \::8\::": LET r=15: GO SUB 3500
3060 PLOT 159,135: DRAW 8,8: PLOT 169,135: DRAW -8,8: PLOT 179,103: DRAW 0,8: PLOT 211,103: DRAW 0,8: PLOT 223,71: DRAW 8,8: PLOT 231,71: DRAW -8,8
3061 FLASH 1: PRINT AT 2,18;"6": PRINT AT 2,22;"3": PRINT AT 2,26;"8": PRINT AT 2,30;"2": PAUSE 500: FLASH 0: PRINT AT 2,18;"6": PRINT AT 2,22;"3": PRINT AT 2,26;"8": PRINT AT 2,30;"2"
3062 FLASH 1: PRINT AT 6,18;"3": PRINT AT 6,22;"6": PRINT AT 6,26;"8": PRINT AT 6,30;"2": PAUSE 500: FLASH 0: PRINT AT 6,18;"3": PRINT AT 6,22;"6": PRINT AT 6,26;"8": PRINT AT 6,30;"2"
3063 FLASH 1: PRINT AT 10,18;"3": PRINT AT 10,22;"6": PRINT AT 10,26;"8": PRINT AT 10,30;"2": PAUSE 500: FLASH 0: PRINT AT 10,18;"3": PRINT AT 10,22;"6": PRINT AT 10,26;"8": PRINT AT 10,30;"2"
3070 PRINT AT 17,0;"After the 1st pass the largest  number has ""bubbled"" to the end."'"Another 2 passes would complete the sort - producing 2,3,6,8."
3071 PRINT AT 21,7;"Press any key": RETURN
3100 PRINT "BUBBLE SORT - A simple algorithmfor ordering a list of items."
3105 PRINT '"The Algorithm:"'"Pass over the list comparing    neighbouring items and swap themif they are out of order. Repeatthese passes until the list is  ordered."
3110 PRINT '"The following page illustrates asingle pass of this algorithm   applied to a very simple list   consisting of 4 numbers."
3111 PRINT '"The objective is to place the   list in ascending order from    left to right."
3115 PRINT AT 20,9;"Press any key"
3120 RETURN
3400 PRINT AT 7,0;"An example now follows in which a hand of cards is sorted in    time by the Spectrum."''"To speed up the sorting hold    down any key."
3410 PRINT AT 21,9;"Press any key": RETURN
3500 PRINT AT r,17;"\::\::\:: \::\::\:: \::\::\:: \::\::\::": RETURN
8000 LET b= CODE n$(13): LET h= CODE c$(13): LET g$=s$(13): FOR a=1 TO 9: PRINT AT 4+a,26; INK 7;"  f) ": NEXT a
8001 IF b=65 OR b=53 THEN GO TO 8500
8010 IF b=50 OR b=51 THEN GO TO 8530
8020 IF b=52 THEN GO TO 8550
8030 IF b=54 THEN GO TO 8580
8040 IF b=55 THEN GO TO 8600
8050 IF b=56 THEN GO TO 8610
8060 IF b=57 THEN GO TO 8620
8070 IF b=74 THEN LET d$="J": GO TO 8700
8080 IF b=81 THEN LET d$="Q": GO TO 8700
8090 IF b=75 THEN LET d$="K": GO TO 8700
8100 PRINT AT 5,26; INK h;g$: PRINT AT 5,30; INK h;g$: PRINT AT 6,28; INK h;g$: PRINT AT 8,26; INK h;g$: PRINT AT 8,30; INK h;g$: PRINT AT 10,26; INK h;g$: PRINT AT 10,30; INK h;g$: PRINT AT 12,28; INK h;g$: PRINT AT 13,26; INK h;g$: PRINT AT 13,30; INK h;g$: RETURN
8500 PRINT AT 9,28; INK h;g$
8510 IF b=53 THEN GO TO 8550
8520 RETURN
8530 PRINT AT 5,28; INK h;g$
8535 PRINT AT 13,28; INK h;g$
8540 IF b=51 THEN GO TO 8500
8545 RETURN
8550 PRINT AT 5,26; INK h;g$
8555 PRINT AT 5,30; INK h;g$
8560 PRINT AT 13,26; INK h;g$
8570 PRINT AT 13,30; INK h;g$
8575 RETURN
8580 PRINT AT 9,26; INK h;g$
8585 PRINT AT 9,30; INK h;g$
8590 GO TO 8550
8600 PRINT AT 7,28; INK h;g$: GO TO 8580
8610 PRINT AT 11,28; INK h;g$: GO TO 8600
8620 PRINT AT 7,26; INK h;g$
8630 PRINT AT 7,30; INK h;g$
8640 PRINT AT 9,28; INK h;g$
8650 PRINT AT 11,26; INK h;g$
8660 PRINT AT 11,30; INK h;g$: GO TO 8550
8700 INK h: LET xs=4: LET ys=4: LET cs=8: LET x=210: LET y=56: GO SUB 9400: RETURN
9000 CLEAR : SAVE "bubblesort" LINE 9050
9010 SAVE "mcode" CODE 32256,299: SAVE "char" CODE USR "a",168: STOP
9050 CLEAR 32255: LOAD "mcode" CODE : LOAD "char" CODE USR "a": RUN
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: LET w=LEN d$: FOR v=1 TO w: POKE a+v, CODE d$(v): NEXT v: POKE a+w+1,255: LET w=USR 32256: RETURN
9999 PRINT PEEK 23730+256*PEEK 23731-PEEK 23653-256*PEEK 23654
