Check F1F0A94C
Auto 8224

# Run-time Variables

Var y: Num = 24
Var x: Num = 88
Var a: Num = 23310
Var xs: Num = 1
Var ys: Num = 2
Var i: NumFOR = 11, 10, 1, 9400, 9
Var d$: Str = "BEATING OF"

# End Run-time Variables

  10 BORDER 5: PAPER 5: INK 0
  15 CLS
  20 LET d$="STOP THE TAPE": LET y=96: LET xs=2: LET ys=2: FLASH 1: GO SUB 9390: FLASH 0
  30 LET y=24: LET xs=1: LET d$="BEATING OF": GO SUB 9390: LET xs=4: LET ys=4: LET y=48: LET d$="WAVES": GO SUB 9390
  40 LET xs=2: LET ys=2: LET y=144: LET d$="PSION   \*1982": INK 1: GO SUB 9390: INK 0
 100 DIM a(256)
 110 FOR x=1 TO 64
 120 LET a(x)=COS (PI*x/128)
 121 LET a(129-x)=-a(x)
 122 LET a(128+x)=-a(x)
 123 LET a(257-x)=a(x)
 140 NEXT x
 142 LET h=0: GO SUB 1130
 143 BORDER 1: INK 0: PAPER 7: CLS
 146 PRINT AT 1,1;"WAVE 1";TAB 17;"WAVE 2";TAB 33;"a=";TAB 49;"a=";TAB 65;"f=";TAB 81;"f=";
 147 PLOT 0,136: DRAW 255,0
 148 PLOT 127,136: DRAW 0,38
 149 IF h=1 THEN RETURN
 150 INPUT "amplitude of wave 1? (0 TO 25)  "; LINE z$: GO SUB 700
 151 IF z=100 THEN GO TO 150
 155 LET b=g: LET a=b: PRINT AT 2,3;a: IF h=1 THEN RETURN
 160 INPUT "frequency of wave 1?(4 TO 50)   "; LINE z$: GO SUB 700
 161 IF z=100 THEN GO TO 160
 162 LET n=z: LET m=n: PRINT AT 3,3;m: IF h=1 THEN RETURN
 180 GO SUB 250
 190 INPUT "amplitude of wave 2?(0 TO 25)   "; LINE z$: GO SUB 700
 191 IF z=100 THEN GO TO 190
 195 LET b=g: PRINT AT 2,19;b: IF h=1 THEN RETURN
 200 INPUT "frequency of wave 2?(4 TO 50)   "; LINE z$: GO SUB 700
 201 IF z=100 THEN GO TO 200
 210 LET n=z: PRINT AT 3,19;n: IF h=1 THEN RETURN
 220 GO SUB 250
 221 GO SUB 250
 225 RESTORE 252: GO TO 500
 250 REM single wave plot
 251 READ c,d,e,f
 252 DATA 1,64,60,155,2,64,188,155,3,256,0,68
 255 LET p=1: LET q=1: LET z=0
 260 FOR x=1 TO d
 270 IF x>256*p/n THEN LET p=p+1
 275 IF x>256*q/m THEN LET q=q+1
 280 LET j=b*a(n*x-256*(p-1))
 285 IF c=3 THEN LET j=(j+a*a(m*x-256*(q-1)))*2
 286 LET j=INT (0.5+j)
 290 IF x>1 THEN DRAW 1,(j-z)/2
 295 PLOT INVERSE 1; OVER 1;e+x-1,f+j/2
 310 LET z=j
 330 NEXT x
 340 RETURN
 500 LET u=a*a+b*b
 510 LET v=a*b*2
 520 LET w=(n-m)*PI/128
 525 IF 6*ABS (n-m)>(n+m) OR n=m THEN GO TO 1000
 530 LET t=ABS (128/(n-m))
 540 FOR x=0 TO (INT t)+1: INK 2
 550 LET y=INT (0.5+SQR (u+v*COS (w*(t+x))))
 560 FOR g=1 TO ABS (n-m)
 570 LET s=INT (0.5+(2*g-1)*t)
 580 IF s+x<256 THEN PLOT s+x,135: DRAW 0,y-60: PLOT s+x,0: DRAW 0,60-y
 610 IF s-x>-1 THEN PLOT s-x,0:: DRAW 0,60-y: PLOT s-x,135: DRAW 0,y-60
 620 NEXT g
 630 NEXT x: IF h=1 THEN RETURN
 640 GO TO 1000
 700 LET z=100
 710 IF z$="" THEN RETURN
 720 FOR i=1 TO LEN z$
 730 IF  CODE z$(i)<48 OR  CODE z$(i)>57 THEN RETURN
 740 NEXT i
 750 LET z=INT (VAL z$)
 800 LET g=z: IF g>25 THEN LET g=25
 810 IF z<4 THEN LET z=4
 815 IF z>50 THEN LET z=50
 820 RETURN
1000 INPUT "want to try again? (y/n)   "; LINE z$
1010 IF  CODE z$=121 THEN GO TO 143
1020 IF  CODE z$=110 THEN GO TO 2000
1030 GO TO 1000
1130 BORDER 1: PAPER 1: INK 7: CLS
1131 PRINT AT 1,0;"Two waves may be added together to form a third,more complex    wave."''"If the frequencies of the two   waves are fairly close,then a   low frequency effect will occur,known as beating.This is most   prominent when the amplitudes ofthe two waves are also close."
1135 PRINT AT 12,0;"The program will add two waves  of your choice,emphasising the  beat frequency in red (if it    finds one!)."
1140 PAPER 7: INK 0: INPUT "would you like an example ?(y/n)"; LINE z$
1141 IF  CODE z$=121 THEN LET h=1: GO SUB 143: LET g=15: GO SUB 155: LET z=25: GO SUB 162: GO SUB 250: LET g=25: GO SUB 195: LET z=30: GO SUB 210: GO SUB 250: GO SUB 250: RESTORE 252: GO SUB 500: LET h=0: GO TO 1150
1142 IF  CODE z$=110 THEN GO TO 1150
1143 GO TO 1140
1150 PRINT AT 21,0;"press any key to start": PAUSE 0
1160 CLS : BORDER 1: RETURN
2000 PAPER 1: INK 7: CLS
2100 LET y=0: LET d$="END OF SIDE B": LET xs=2: LET ys=3: GO SUB 9390
2200 PRINT AT 5,0;"You do not have to run through  the whole of side A or side B inorder to run a particular       program."
2210 PRINT '"All the programs on this tape   may be loaded individually by   positioning the recorder before the required program (or just   rewinding  the appropriate      side) and entering:"
2220 PRINT '"LOAD ""pname""";''"where pname is the program name."
2900 GO TO 9999
9000 CLEAR : SAVE "waves" LINE 9100
9010 SAVE "m" CODE 32256,300: STOP
9100 CLEAR 32255: LOAD "m" CODE
9110 RUN
9390 LET x=(256-xs*8*LEN d$)/2
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,8: LET a=a+4: FOR i=1 TO LEN d$: POKE a+i, CODE d$(i): NEXT i: POKE a+i,255: RANDOMIZE USR 32256: RETURN
