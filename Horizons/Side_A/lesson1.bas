Check A0200410
Auto 8224

# Run-time Variables

Var y: Num = 176
Var x: Num = 52
Var a: Num = 23310
Var w: Num = 1
Var z: Num = 0
Var xs: Num = 1
Var ys: Num = 2
Var cs: Num = 8
Var ch: Num = 97
Var i: NumFOR = 20, 19, 1, 9400, 10
Var d$: Str = "Press a to continue"
Var f$: StrArray(3, 38) = "1234567890QWERTYUIOPASDFGHJKL ZXCVBNM 1234567890qwertyuiopasdfghjkl\#013zxcvbnm !\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;"\#226\#195\#205\#204\#203^-+= :\`?/*,. "

# End Run-time Variables

  10 DIM f$(3,38)
  11 LET f$(1)="1234567890QWERTYUIOPASDFGHJKL ZXCVBNM "
  12 LET f$(2)="1234567890qwertyuiopasdfghjkl"+CHR$ 13+"zxcvbnm "
  13 LET f$(3)="!\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;""\#226\#195\#205\#204\#203^-+= :\`?/*,. "
 100 GO SUB 8920: INK 0: LET y=0: LET d$="LESSON ONE": GO SUB 9700: GO SUB 9970
 110 GO SUB 8000: LET d$="DO NOT PRESS BREAK!": LET y=40: GO SUB 9390: PRINT FLASH 1;AT 19,0;"  ";AT 19,27;"    ": PAUSE 200
 120 GO SUB 9960: PRINT AT 4,0;"Pressing BREAK stops the programYou can restart by entering RUN (press r followed by ENTER).": GO SUB 9970
 150 GO SUB 2000: PRINT '''"This is the 1st of 4 lessons    which are designed to teach the fundamentals of the Spectrum    keyboard.": GO SUB 9970
 200 GO SUB 8000: PRINT AT 4,0;"The letters and numbers on the  Spectrum are laid out in the    same way as a typewriter."
 210 GO SUB 9970
 220 PAPER 0: CLS
 230 INK 7: PRINT AT 1,0;"However, you will notice that   there is much else on and aroundthe keys which makes this       keyboard more complicated and   powerful than a typewriter      keyboard."
 232 LET y=10: DIM f(5): FOR i=1 TO 5: LET f(i)=1: NEXT i: LET f(2)=0: GO SUB 8700
 235 PAPER 0: PRINT AT 17,0;"More about the flashing parts   in the following lessons. In    this lesson,we will concentrate on letters  and numbers."
 240 GO SUB 9970
 300 GO SUB 8000: PRINT AT 4,0;"Use CAPS SHIFT to produce upper case characters...": PAUSE 150: GO SUB 9960
 305 PRINT AT 4,0;"E.g., pressing just key H...": LET d$="h": GO SUB 7600: PAUSE 100: PRINT AT 6,0;"    ...gives lower case "; FLASH 1;d$
 310 PAUSE 150: GO SUB 9960: PRINT AT 4,0;"While pressing key H and CAPS   SHIFT together...": LET d$="H": GO SUB 7600: PAUSE 100: PRINT AT 7,0;"    ...gives upper case "; FLASH 1;d$
 390 GO SUB 9970: GO TO 2500
2000 PAPER 6: INK 0: CLS
2010 LET y=1: LET d$="CONTENTS": GO SUB 9700
2020 PRINT AT 4,0;"Lesson 1: Typewriter mode"
2025 PRINT '"Lesson 2: Single Entry Keywords"
2030 PRINT '"Lesson 3: The cursor mode"
2035 PRINT '"Lesson 4: Extended mode"
2090 RETURN
2500 GO SUB 8000: PRINT AT 4,0;"The following test will continuead infinitum unless you exit by pressing STOP (SYMBOL SHIFT & A)Try pressing STOP now."
2510 LET ch=226: LET i=21: LET j=3: GO SUB 7605: GO SUB 9980: GO SUB 9150
3000 GO SUB 9940
3005 GO SUB 9942
3010 GO SUB 7000: LET d$="PRESS "+CHR$ ch: LET y=40: GO SUB 9960: GO SUB 9700: LET l=1: GO SUB 9150: IF l=0 THEN GO SUB 8000: GO TO 3005
3030 IF z<>226 THEN GO TO 3010
3040 GO SUB 7010
3100 CLS : LET d$="Enter & Press": LET y=12: GO SUB 9700
3110 PRINT AT 6,0;"The next test will ask you to   enter a sequence of characters  (or string)."
3120 PRINT '"The word 'enter' will always    imply that you should terminate the character or characters by  pressing the key ENTER."
3130 PRINT '"When you are asked to 'press' a character or keyword, you shouldnot press ENTER after pressing  the required key.": GO SUB 9970
4000 GO SUB 9940
4005 GO SUB 9942
4010 LET k$="": FOR i=0 TO INT (3.9*RND): GO SUB 7000: LET k$=k$+CHR$ ch: NEXT i
4020 LET d$="ENTER "+k$: GO SUB 9960: LET y=40: GO SUB 9700: GO SUB 9250: IF l=0 THEN GO SUB 8000: GO TO 4005
4025 IF z<>226 THEN GO TO 4010
4030 GO SUB 7010
6000 INK 0: PAPER 6: CLS : LET d$="END": LET xs=6: LET ys=6: LET cs=8: LET y=16: LET x=56: GO SUB 9400
6010 LET d$="Press y to run again": LET y=80: GO SUB 9390: LET y=120: LET d$="or any other key to continue": GO SUB 9390: GO SUB 9200: IF CHR$ z="y" THEN RUN
6030 LET d$="START THE TAPE": LET y=80: GO SUB 9700
6040 LET d$="       Loading lesson2       ": LET y=120: INK 0: GO SUB 9390: LOAD "lesson2"
7000 LET ch=INT (RND*26+65)+INT (2*RND)*32: RETURN
7010 GO SUB 9960: LET d$="O.K.": GO SUB 9930: FOR i=0 TO 100: NEXT i: RETURN
7100 IF  CODE k$>31 THEN GO TO 7180
7110 IF  CODE k$=13 THEN LET d$="ENTER": RETURN
7120 LET d$="?": RETURN
7180 PRINT INK 0; PAPER 0;AT 21,0;"0000000000";AT 21,0;k$: LET d$="": FOR x=0 TO 9: LET e$= SCREEN$ (21,x): IF e$="0" THEN RETURN
7190 LET d$=d$+e$: NEXT x: RETURN
7200 FOR j=1 TO 3: FOR i=1 TO 38: IF d$=f$(j,i) THEN RETURN
7210 NEXT i: NEXT j: RETURN
7300 LET q=i-1
7310 LET y=INT (q/10): LET x=(q-y*10)*3+y: LET y=y*3+10
7320 PRINT INK 8; PAPER 8; FLASH 1;AT y,x; OVER 1;"  ": RETURN
7600 GO SUB 7200
7605 GO SUB 7300: IF j=2 THEN RETURN
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
8920 LET y=32: INK 0: LET d$="KEYBOARD TRAINER": GO SUB 9700: LET y=48: LET d$="SERIES": GO SUB 9700: LET y=144: INK 1: LET d$="PSION \*1982": GO TO 9700
9000 CLEAR : SAVE "lesson1" LINE 9100
9010 SAVE "mcode" CODE 32256,340
9020 STOP
9100 CLEAR 32255: LOAD "mcode" CODE
9105 GO SUB 8900: GO TO 1
9150 GO SUB 9200: IF ch=z OR z=226 AND ch<>226 THEN RETURN
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
9800 CLEAR 32000: FOR i=0 TO 298: POKE 32000+i,PEEK (32768+i): NEXT i: STOP
9900 RANDOMIZE : LET ch=INT (24*RND+97)
9910 PRINT "Press "; FLASH 1;CHR$ ch; FLASH 0;" to continue": GO TO 9150
9920 FOR i=30 TO 0 STEP -1: BEEP .003,i: NEXT i: RETURN
9930 GO SUB 9960: LET y=32: INK 7: GO TO 9600
9940 GO SUB 8000: LET d$="TEST": GO SUB 9930: PAUSE 50: RETURN
9942 PAPER 6: INK 0: LET d$="Press STOP to exit": LET xs=2: LET ys=2: LET cs=7: LET x=0: LET y=176: GO SUB 9400: PAPER 0: INK 7: GO TO 9960
9950 PAPER 0: INK 7: LET d$="WRONG!": GO SUB 9930: GO SUB 9920: GO SUB 8000: INK 7: LET l=0: LET k$=CHR$ z: GO SUB 7100: LET d$="You pressed "+d$: LET y=24: LET cs=7: GO SUB 9390: LET d$=CHR$ ch
9951 GO SUB 7600: LET k$=CHR$ ch: GO SUB 7100: LET d$="It should have been "+d$: LET y=40: GO SUB 9390
9952 PRINT INK 6; FLASH 1;AT 8,11;"TRY AGAIN": GO SUB 9980: GO TO 9150
9960 FOR j=0 TO 5: PRINT AT 3+j,0;"                                ": NEXT j: RETURN
9970 INK 0: PAPER 6: LET ch=INT (26*RND+97): LET d$="Press "+CHR$ ch+" to continue": LET y=176: LET cs=8: GO SUB 9390: GO TO 9150
9980 INK 0: PAPER 6: LET d$="Press the flashing key or keys": LET y=176: LET cs=8: GO TO 9390
