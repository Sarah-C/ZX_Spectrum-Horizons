Check 3217195A
Auto 8224

# Run-time Variables

Var y: Num = 32
Var x: Num = 0
Var a: Num = 23310
Var w: Num = 16
Var xs: Num = 2
Var ys: Num = 2
Var cs: Num = 8
Var d: NumArray(5) = 0, 0, 0, -1, 1
Var i: NumFOR = 17, 16, 1, 9400, 10
Var d$: Str = "KEYBOARD TRAINER"
Var f$: StrArray(3, 38) = "1234567890QWERTYUIOPASDFGHJKL ZXCVBNM 1234567890qwertyuiopasdfghjkl\#013zxcvbnm !\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;"\#226\#195\#205\#204\#203^-+= :\`?/*,. "

# End Run-time Variables

  10 DIM f$(3,38)
  11 LET f$(1)="1234567890QWERTYUIOPASDFGHJKL ZXCVBNM "
  12 LET f$(2)="1234567890qwertyuiopasdfghjkl"+CHR$ 13+"zxcvbnm "
  13 LET f$(3)="!\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;""\#226\#195\#205\#204\#203^-+= :\`?/*,. "
  20 DIM d(5): LET d(4)=-1: LET d(5)=1
 100 GO SUB 8920: INK 0: LET y=0: LET d$="LESSON TWO": GO SUB 9700: GO SUB 9970
 200 PAPER 0: INK 7: CLS : LET y=4: LET d$="KEYWORDS": GO SUB 9700
 210 PRINT AT 4,0;"The flashing words on and aroundthe I key are keywords belongingto the Spectrum BASIC language."
 215 LET y=9: DIM f(5): FOR i=1 TO 5: LET f(i)=1: NEXT i: LET f(2)=0: GO SUB 8700
 220 PAPER 0: INK 7: PRINT AT 16,0;"Every word or command in the    Spectrum BASIC is entered by    pressing the correct key or keysfor that command and NOT by     spelling the command out."
 230 GO SUB 9970: PAPER 0: CLS : INK 7: PRINT AT 0,0;"We will first concentrate on thewhite keywords which are on the keys."
 235 LET y=5: DIM f(5): LET f(4)=1: GO SUB 8700
 240 PAPER 0: INK 7: PRINT AT 12,0;"These keywords are the most     commonly used and always appear at the beginning of a statement or after the keyword THEN."
 245 PRINT '"The Spectrum uses this property to decide whether to interpret  a letter key press as that      letter or as the keyword on thatkey."
 290 GO SUB 9970
 300 GO SUB 9940: GO SUB 9960: PRINT AT 4,0;"In the following test, assume   that the Spectrum is expecting aBASIC keyword": PAUSE 200
 310 GO SUB 9942
 320 LET k$=CHR$ INT (25*RND+230): GO SUB 7100
 330 LET d$="Enter "+d$: LET y=32: GO SUB 9960: INK 7: GO SUB 9700: GO SUB 9250: IF l=0 THEN GO SUB 8000: LET k$=k$(1 TO LEN k$-1): GO TO 310
 340 IF z<>226 THEN GO TO 320
 350 GO SUB 7010: CLS : LET y=4: LET d$="SYMBOL SHIFT": GO SUB 9700
 360 PRINT AT 4,0;"The red keywords and symbols on the keys are produced by        pressing the appropriate key andSYMBOL SHIFT together"
 362 LET y=12: DIM f(5): LET f(3)=1: GO SUB 8700: PAPER 0: GO SUB 9970
 370 GO SUB 9940
 375 GO SUB 9942
 380 LET k$=f$(3,INT (1+37*RND)): IF k$=" " THEN GO TO 380
 382 GO SUB 7100: LET d$="Enter "+d$: LET y=32: GO SUB 9960: INK 7: GO SUB 9700: GO SUB 9250: IF l=0 THEN GO SUB 8000: LET k$=k$(1 TO LEN k$-1): GO TO 375
 385 IF z<>226 OR ch=226 THEN GO TO 380
 390 GO SUB 7010
6000 INK 0: PAPER 6: CLS : LET d$="END": LET xs=6: LET ys=6: LET cs=8: LET y=16: LET x=56: GO SUB 9400
6010 LET d$="Press y to run again": LET y=80: GO SUB 9390: LET y=120: LET d$="or any other key to continue": GO SUB 9390: GO SUB 9200: IF CHR$ z="y" THEN RUN
6030 LET y=80: LET d$="START THE TAPE": GO SUB 9700
6040 LET d$="       Loading lesson3       ": LET y=120: GO SUB 9390: PRINT AT 20,0;
6050 LOAD "lesson3"
7000 LET ch=INT (RND*26+65)+INT (2*RND)*32: RETURN
7010 GO SUB 9960: LET d$="O.K.": GO SUB 9930: FOR i=0 TO 100: NEXT i: RETURN
7090 LET k$=d$
7100 IF  CODE k$>31 THEN GO TO 7180
7110 IF  CODE k$=13 THEN LET d$="ENTER": RETURN
7125 LET d$="???": RETURN
7180 PRINT INK 0; PAPER 0;AT 21,0;"00000000000000000000000000000000";AT 21,0;k$: LET d$="": FOR x=0 TO 9: LET e$= SCREEN$ (21,x): IF e$="0" THEN RETURN
7190 LET d$=d$+e$: NEXT x: RETURN
7200 FOR j=1 TO 3: FOR i=1 TO 38: IF d$=f$(j,i) THEN RETURN
7210 NEXT i: NEXT j: RETURN
7300 LET q=i-1: LET d=d(j): LET e$=f$(1,i)
7310 LET y=INT (q/10): LET x=(q-y*10)*3+y: LET y=y*3+10-d
7320 PRINT INK 8; PAPER 8; FLASH 1;AT y,x; OVER 1;"  ": RETURN
7600 IF ch>229 THEN LET d$=CHR$ (ch-133)
7605 GO SUB 7200: GO SUB 7300: IF j=2 THEN RETURN
7610 IF j=3 THEN LET i=38: GO TO 7300
7620 IF j=4 THEN LET j=1: LET i=38: GO TO 7300
7630 IF j=1 THEN LET z=INT (PEEK 23658/8): IF 2*INT (z/2)=z THEN PRINT AT 19,0; FLASH 1;"  ": RETURN
7640 RETURN
8000 PAPER 0: INK 0: CLS : LET y=10: LET x=0: LET n=9: LET c=7: LET s=1: GO SUB 8500
8010 LET x=x+1: LET y=y+3: LET s=11: LET c=4: GO SUB 8500
8020 LET x=x+1: LET y=y+3: LET s=21: LET n=8: GO SUB 8500
8030 LET x=x+1: LET y=y+3: LET s=31: LET n=6: GO SUB 8500
8040 LET x=29: LET y=16: LET d$="  ": LET n=7: GO SUB 8600
8050 LET x=0: LET y=19: GO SUB 8600
8060 LET x=27: LET d$="    ": GO SUB 8600
8070 LET x=24: LET d$="  ": LET n=2: GO SUB 8600
8080 LET x=0: LET y=0: LET xs=2: LET ys=2: LET cs=6: LET d$="sinclair": INK 4: GO SUB 9400
8090 LET cs=7: LET x=2: LET y=16: LET xs=1: LET ys=1: LET d$="ZXSpectrum": INK 7: GO SUB 9400
8100 RETURN
8500 PRINT AT y-1,x;: FOR i=s TO s+n: PRINT PAPER c;"\''\''"; PAPER 0;" ";: NEXT i
8510 PRINT AT y,x;: FOR i=s TO s+n: PRINT PAPER 5;f$(1,i);" "; PAPER 0;" ";: NEXT i
8520 PRINT AT y+1,x;: FOR i=s TO s+n: PRINT PAPER 5; INK 2;"\..\.."; PAPER 0;" ";: NEXT i
8530 RETURN
8600 PAPER n: PRINT AT y,x;d$;AT y+1,x;
8610 FOR i=1 TO LEN d$: PRINT "\..";: NEXT i: PAPER 0: RETURN
8700 LET x=12
8710 PRINT AT y,x; INK 5;"\..\..\..\..\..\..\..": FOR i=1 TO 3: PRINT AT y+i,x; PAPER 5;"       ": NEXT i: PRINT AT y+4,x; INK 5;"\''\''\''\''\''\''\''"
8720 PRINT AT y-1,x; INK 4; FLASH f(1);"CODE";AT y+5,x; INK 2; FLASH f(5);"IN"
8730 PAPER 5: PRINT AT y+1,x+4; INK 2; FLASH f(3);"AT"; INK 7;AT y+3,x+2; FLASH f(4);"INPUT"
8740 FLASH f(2): LET x=8*x+2: LET y=8*y+8: INK 7: LET d$="I": LET xs=2: LET ys=2: LET cs=8: GO SUB 9400
8790 FLASH 0: RETURN
8900 BORDER 6: PAPER 6: INK 0: CLS : LET d$="STOP THE TAPE": LET y=96: FLASH 1: GO SUB 9700: FLASH 0: RETURN
8920 LET y=32: LET d$="KEYBOARD TRAINER": GO SUB 9700: LET y=48: LET d$="SERIES": GO SUB 9700: LET y=144: INK 1: LET d$="PSION \*1982": GO TO 9700
9000 CLEAR : SAVE "lesson2" LINE 9100
9010 SAVE "mcode" CODE 32256,340
9020 STOP
9100 CLEAR 32255: LOAD "mcode" CODE
9110 GO SUB 8900: GO TO 1
9150 GO SUB 9200: IF ch>229 AND z+133<256 AND z+133>229 THEN LET z=z+133
9155 IF ch=z OR z=226 AND ch<>226 THEN RETURN
9160 GO TO 9950
9200 POKE 23560,0
9210 LET z=PEEK 23560: IF z=0 THEN GO TO 9210
9220 RETURN
9250 PRINT AT 0,22;"         ";AT 0,22;: LET l=0: LET k$=k$+CHR$ 13
9270 LET l=l+1: LET ch= CODE k$(l): GO SUB 9150: IF l=0 OR z=13 OR z=226 THEN RETURN
9280 PRINT CHR$ z;: GO TO 9270
9292 LET d$="ENTER": GO TO 9950
9300 BORDER 6: PAPER 6: INK 0: CLS : RETURN
9390 LET xs=1: LET ys=2: LET x=(256-cs*LEN d$)/2
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: LET w=LEN d$: FOR i=1 TO w: POKE a+i, CODE d$(i): NEXT i: POKE a+w+1,255: LET w=USR 32256: RETURN
9600 LET x=(256-24*LEN d$)/2: LET xs=3: LET ys=4: LET cs=8: GO TO 9400
9700 LET x=(256-16*LEN d$)/2: LET xs=2: LET ys=2: LET cs=8: GO TO 9400
9900 RANDOMIZE : LET ch=INT (24*RND+97)
9910 PRINT "Press "; FLASH 1;CHR$ ch; FLASH 0;" to continue": GO TO 9150
9920 FOR i=30 TO 0 STEP -1: BEEP .003,i: NEXT i: RETURN
9930 GO SUB 9960: LET y=32: INK 7: GO TO 9600
9940 GO SUB 8000: LET d$="TEST": GO SUB 9930: PAUSE 50: RETURN
9942 PAPER 6: INK 0: LET d$="Press STOP to exit": LET xs=2: LET ys=2: LET cs=7: LET x=0: LET y=176: GO SUB 9400: PAPER 0: INK 7: GO TO 9960
9950 LET d$="WRONG!": GO SUB 9930: GO SUB 9920: GO SUB 8000: LET l=0: INK 7: LET k$=CHR$ z: GO SUB 7100: LET d$="You pressed "+d$: LET y=24: LET cs=7: GO SUB 9390: LET d$=CHR$ ch
9951 GO SUB 7600: LET d$=CHR$ ch: IF ch=13 THEN LET d$="ENTER"
9952 LET k$=d$: GO SUB 7100: LET d$="You should have pressed "+d$: LET y=40: LET cs=7: GO SUB 9390: PRINT INK 6; FLASH 1;AT 8,11;"TRY AGAIN": GO SUB 9980: GO TO 9150
9960 FOR j=0 TO 4: PRINT AT 4+j,0;"                                ": NEXT j: RETURN
9970 PAPER 6: INK 0: RANDOMIZE : LET ch=INT (26*RND+97): LET d$="Press "+CHR$ ch+" to continue": LET y=176: LET x=(256-cs*LEN d$)/2: LET xs=1: LET ys=2: LET cs=8: GO SUB 9400: GO TO 9150
9980 PAPER 6: INK 0: LET d$="Press the flashing key or keys": LET y=176: LET cs=8: GO SUB 9390: PAPER 0: INK 7: RETURN
