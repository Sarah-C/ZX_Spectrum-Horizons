Check 4A942AC6
Auto 8224

# Run-time Variables

Var i: Num = 23310
Var w: Num = 4
Var xs: Num = 4
Var ys: Num = 6
Var yy: Num = 20
Var xx: Num = 64
Var n: NumFOR = 5, 4, 1, 3510, 10
Var p$: Str = "DRAW"

# End Run-time Variables

  10 LET z=0: LET x=127: LET y=87: LET a=127: LET b=87: LET cf=z: LET j=1
  14 GO SUB 810: CLS
  20 INPUT "Enter colour (0-7) for paper "; LINE i$: GO SUB 1600: IF i<0 OR i>7 THEN GO TO 20
  24 LET pc=i
  30 INPUT "Enter colour (0-7) for ink "; LINE i$: GO SUB 1600: IF i<0 OR i>7 THEN GO TO 30
  34 LET ic=i: LET ik=i
  40 INK ic: BORDER pc: PAPER pc: CLS
  50 DIM f$(1000): LET s=1
  60 LET s$="qijclbCB"
  64 LET t$="284567"
  70 GO SUB 3480
  80 GO SUB 2070
 100 PAUSE z: LET i$=INKEY$
 110 FOR n=1 TO 6: IF n>2 AND s>990 THEN LET p$="        NO MORE ROOM       ": GO SUB 3490: GO SUB 3480: GO TO 100
 114 IF s$(n)=i$ THEN GO TO 100*VAL t$(n)
 130 NEXT n
 140 LET i= CODE i$: IF i>7 AND i<12 THEN GO SUB 2070: GO TO 240+10*(i-8)
 150 IF i>52 AND i<57 THEN GO SUB 2070: GO TO 340+10*(i-53)
 160 GO TO 100
 200 LET xs=2: LET ys=2: LET p$="START THE TAPE": LET yy=176: GO SUB 3500: LOAD "montecarlo"
 240 LET x=x-j: IF x<4 THEN LET x=4
 244 GO TO 80
 250 LET x=x+j: IF x>251 THEN LET x=251
 254 GO TO 80
 260 LET y=y-j: IF y<4 THEN LET y=4
 264 GO TO 80
 270 LET y=y+j: IF y>171 THEN LET y=171
 274 GO TO 80
 340 LET a=a-j: IF a<4 THEN LET a=4
 344 GO TO 80
 350 LET b=b-j: IF b<4 THEN LET b=4
 354 GO TO 80
 360 LET b=b+j: IF b>171 THEN LET b=171
 364 GO TO 80
 370 LET a=a+j: IF a>251 THEN LET a=251
 380 GO TO 80
 400 INPUT AT z,4;"Enter number of spaces for";TAB 10;"cursor jump "; LINE i$: GO SUB 1600: IF i>100 THEN GO TO 400
 410 LET j=i: GO SUB 3480: GO TO 100
 450 LET cf=1-cf: GO TO 100
 500 GO SUB 2070: GO SUB 2500: IF r=0 THEN GO TO 80
 510 GO SUB 2200: IF i$<>"c" THEN GO SUB 2810
 520 GO TO 70
 610 GO SUB 2070: GO SUB 2100: GO SUB 2600: IF p$(5)=" " THEN GO TO 70
 620 GO TO 80
 700 IF x=a OR y=b THEN LET p$="+ AND X IN LINE - TRY AGAIN": GO SUB 3490: PAUSE 100: GO SUB 3480: GO TO 100
 710 GO SUB 2070: GO SUB 2700: GO SUB 2200: IF i$<>"b" THEN GO SUB 2900
 720 GO TO 70
 800 GO SUB 810: GO TO 900
 810 PAPER 1: CLS : BORDER 1: INK 7: INPUT ;
 814 PRINT "There are 2 crosswires (+ and X) which can be moved around the   screen and are used to define   various figures"''
 820 PRINT '"  + is moved by pressing the";TAB 4;"arrow keys 5,6,7 or 8"''
 830 PRINT "  X by pressing SHIFT-5,6,7 or 8"'''
 840 PRINT "The crosswires move one pixel at a time but you can change this  by pressing J and entering the  number of pixels the crosswires will jump at a time"
 850 PRINT '''TAB 8;"PRESS ANY KEY": PAUSE 0: CLS
 860 PRINT "The following figures are drawn  by pressing the keys indicated:"''
 870 PRINT '"  L draws a line from + to X"''"  C draws a circle with centre +    passing through X"
 880 PRINT '"  B draws a box with + and X at     diagonally opposite corners     + and X must not be in line     vertically or horizontally"'''
 890 PRINT '"  Q gets you out of the program"''''TAB 9;"PRESS ANY KEY": PAUSE 0
 894 RETURN
 900 PAPER pc: INK ik: BORDER pc
1000 CLS : LET s=1
1010 IF f$(s)=" " THEN GO TO 70
1020 LET i$=f$(s): LET a= CODE f$(s+1): LET b= CODE f$(s+2): LET x= CODE f$(s+3): LET y= CODE f$(s+4): IF i$<"a" THEN LET ic=VAL f$(s+5)
1030 FOR n=1 TO 5: IF s$(3+n)=i$ THEN GO SUB 2400+100*n: LET s=s+5: GO TO 1010
1040 NEXT n
1100 GO SUB 2500: LET s=s+5: GO TO 1010
1200 GO SUB 2600
1600 LET i=110: IF i$="" THEN RETURN
1610 FOR n=1 TO LEN i$: IF  CODE i$(n)<48 OR  CODE i$(n)>57 THEN RETURN
1620 NEXT n
1630 LET i=INT VAL i$: RETURN
2070 INK 8: OVER 1: PLOT x,y: PLOT x+4,y+4: DRAW -8,-8: PLOT x-4,y+4: DRAW 8,-8
2080 PLOT a-2,b: DRAW 4,z: PLOT a,b-2: DRAW z,4: INK ik: OVER z: RETURN
2100 LET f$(s)=i$: LET f$(s+1)=CHR$ a: LET f$(s+2)=CHR$ b: LET f$(s+3)=CHR$ x: LET f$(s+4)=CHR$ y: LET s=s+5: RETURN
2200 LET p$="Do you want to paint this? (y/n)": GO SUB 3490: PAUSE z: IF INKEY$="n" THEN GO SUB 2100: GO TO 70
2202 IF INKEY$<>"y" THEN GO TO 2200
2204 LET i$=CHR$ ( CODE i$-32): GO SUB 2100
2210 LET p$="       What colour? (0-7)       ": GO SUB 3490: PAUSE z: LET i$=INKEY$: IF i$<"0" OR i$>"7" THEN GO TO 2210
2220 LET ic=VAL i$: LET f$(s)=i$: GO SUB 3600: RETURN
2500 LET r=INT SQR ((x-a)*(x-a)+(y-b)*(y-b))
2510 IF a+r>255 OR a-r<z OR b+r>175 OR b-r<z THEN LET p$=" CIRCLE WILL GO OFF THE SCREEN ": GO SUB 3500: LET p$="           TRY AGAIN           ": GO SUB 3500: LET r=0: RETURN
2550 CIRCLE a,b,r
2560 RETURN
2600 PLOT a,b: DRAW x-a,y-b: RETURN
2700 PLOT a,b: DRAW x-a,0: DRAW 0,y-b: DRAW a-x,0: DRAW 0,b-y: RETURN
2800 LET r=INT SQR ((x-a)*(x-a)+(y-b)*(y-b))
2810 LET s=s+1: INK ic: FOR n=z TO r: LET b1=INT (.5+SQR (r*r-n*n)*2): LET a1=b+b1/2: PLOT a+n,a1: DRAW z,-b1: PLOT a-n,a1: DRAW z,-b1: NEXT n: INK ik: RETURN
2900 LET s=s+1: FOR n=y TO b STEP SGN (b-y): PLOT INK ic,a,n: DRAW INK ic,x-a,z: NEXT n: RETURN
3480 LET p$="    PRESS I FOR INSTRUCTIONS    "
3490 LET xs=1: LET ys=1: LET yy=176
3500 LET xx=(256-8*xs*LEN p$)/2
3510 LET i=23306: POKE i,xx: POKE i+1,yy: POKE i+2,xs: POKE i+3,ys: POKE i+4,8: LET i=i+4: LET w=LEN p$: FOR n=1 TO w: POKE i+n, CODE p$(n): NEXT n: POKE i+w+1,255: LET w=USR 32256: RETURN
3600 LET p$="                                ": LET ys=2: LET yy=176: GO TO 3500
8000 CLEAR 32255: LOAD "c" CODE
8010 INK 0: PAPER 5: BORDER 5: CLS : FLASH 1: LET p$="STOP THE TAPE": LET xs=2: LET ys=2: LET yy=100: GO SUB 3500: FLASH 0
8020 LET xs=4: LET ys=6: LET yy=20: LET p$="DRAW": GO SUB 3500
8030 LET yy=140: LET xs=2: LET ys=2: LET p$="PSION  \*1982": GO SUB 3500
8040 LET yy=170: LET xs=1: LET p$="Press any key": GO SUB 3500
8050 PAUSE 0: RUN
9990 CLEAR : SAVE "draw" LINE 8000: SAVE "c" CODE 32256,300
