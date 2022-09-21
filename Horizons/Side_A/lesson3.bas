Check F29DF1E0
Auto 8224

# Run-time Variables

Var y: Num = 144
Var x: Num = 40
Var a: Num = 23310
Var w: Num = 11
Var xs: Num = 2
Var ys: Num = 2
Var cs: Num = 8
Var d: NumArray(5) = 0, 0, 0, -1, 1
Var i: NumFOR = 12, 11, 1, 9400, 10
Var d$: Str = "PSION \*1982"
Var f$: StrArray(3, 38) = "\#007\#006\#004\#005\#008\#010\#011\#009\#015\#012QWERTYUIOPASDFGHJKL ZXCVBNM\#0141234567890qwertyuiopasdfghjkl\#013zxcvbnm !\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;"\#226\#195\#205\#204\#203^-+= :\`?/*,. "

# End Run-time Variables

  10 DIM f$(3,38)
  11 LET f$(1)=CHR$ 7+CHR$ 6+CHR$ 4+CHR$ 5+CHR$ 8+CHR$ 10+CHR$ 11+CHR$ 9+CHR$ 15+CHR$ 12+"QWERTYUIOPASDFGHJKL ZXCVBNM"+CHR$ 14
  12 LET f$(2)="1234567890qwertyuiopasdfghjkl"+CHR$ 13+"zxcvbnm "
  13 LET f$(3)="!\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;""\#226\#195\#205\#204\#203^-+= :\`?/*,. "
  20 DIM d(5): LET d(4)=-1: LET d(5)=1
 100 GO SUB 8920: LET y=0: LET d$="LESSON THREE": GO SUB 9700: GO SUB 9970
 200 PAPER 0: INK 7: CLS : LET y=4: LET d$="MODES": GO SUB 9700
 210 PRINT AT 3,0;"The interpretation of a key is  not only affected by the shift  keys but also by the present    mode - as indicated by the      cursor. There are 5 modes:"
 215 LET x=2: LET y=9: LET c$="KLCEG": PRINT INK 5;'"CURSOR": FOR i=1 TO 5: PRINT FLASH 1;AT y+2*i,x;c$(i TO i): NEXT i
 220 LET x=5: PRINT AT 11,x;"Keyword expected";AT 13,x;"Letter (lower case)";AT 15,x;"Capital (upper case letter)";AT 17,x;"Extended (off the keys)";AT 19,x;"Graphics characters"
 230 GO SUB 9970: PAPER 0: INK 7: CLS : LET y=4: LET d$="MODE CONTROL": GO SUB 9700: PRINT AT 4,0;"Normally the \{f1}L\{f0} cursor is active unless the Spectrum is expectinga keyword when the \{f1}K\{f0} cursor is  active. The remaining 3 modes orcursors can be set by pressing  the following key pairs:"
 235 PRINT ''" \{f1}C\{f0} CAPS SHIFT & 2 (CAPS LOCK)"''" \{f1}E\{f0} CAPS SHIFT & SYMBOL SHIFT"''" \{f1}G\{f0} CAPS SHIFT & 9 (GRAPHICS)"
 240 PRINT ''"Pressing the same combination   again resets to the \{f1}L\{f0} mode.": GO SUB 9970
 300 GO SUB 9940: GO SUB 9960: GO SUB 7020: PRINT AT 4,0;"The current cursor is shown     above. Press the keys that make the current cursor the same as  that which appears in this space": GO SUB 9970
 310 GO SUB 9942: GO SUB 7050
 320 GO SUB 9960: GO SUB 7020: LET k$="CEG"+CHR$ 6+CHR$ 14+CHR$ 15: LET i=INT (3*RND+1): LET c$=k$(i TO i): LET ch= CODE k$(i+3): GO SUB 7030
 325 LET l=1: GO SUB 9150: IF l=0 THEN GO SUB 8000: GO TO 310
 326 IF z=226 THEN GO TO 340
 327 GO SUB 9960: GO SUB 7020: LET c$="L": GO SUB 7030
 328 LET l=1: GO SUB 9150: IF l=0 THEN GO SUB 8000: GO TO 310
 330 IF z<>226 THEN GO TO 320
 340 GO SUB 7050: GO SUB 7010: GO TO 1300
6000 INK 0: PAPER 6: CLS : LET d$="END": LET xs=6: LET ys=6: LET cs=8: LET y=16: LET x=56: GO SUB 9400
6010 LET d$="Press y to run again": LET y=80: GO SUB 9390: LET y=120: LET d$="or any other key to continue": GO SUB 9390: GO SUB 9200: IF CHR$ z="y" THEN RUN
6030 LET y=80: LET d$="START THE TAPE": GO SUB 9700
6040 LET d$="       Loading lesson4       ": LET y=120: GO SUB 9390
6050 LOAD "lesson4"
7010 GO SUB 9960: LET d$="O.K.": GO SUB 9930: FOR i=0 TO 100: NEXT i: RETURN
7020 LET d$="CURRENT": LET x=112: LET y=8: INK 1: GO SUB 9710: INK 7: GO SUB 7900: FLASH 1: LET d$=c$: LET y=8: LET x=232: GO SUB 9710: FLASH 0: RETURN
7030 LET d$="MAKE": LET x=8: LET y=40: GO SUB 9710: LET d$=c$: LET x=88: FLASH 1: GO SUB 9710: FLASH 0: LET d$="CURRENT": LET x=120: GO TO 9710
7050 POKE 23617,0: LET w=USR 32570: RETURN
7090 LET k$=d$
7100 IF  CODE k$>31 THEN GO TO 7180
7110 IF  CODE k$=13 THEN LET d$="ENTER": RETURN
7112 IF  CODE k$=14 THEN LET d$="CAPS/SYMBOL SHIFT": RETURN
7120 FOR i=1 TO 10: IF k$=f$(1,i) THEN GO TO 7130
7125 NEXT i: LET d$="?": RETURN
7130 LET d$="CAPS SHIFT-"+STR$ i: RETURN
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
7630 IF j=1 THEN GO SUB 7900: IF c$="L" OR i<11 THEN PRINT AT 19,0; FLASH 1;"  ": RETURN
7640 RETURN
7900 LET x=PEEK 23617: IF x<>0 THEN GO TO 7930
7910 LET y=INT (PEEK 23658/8): IF 2*INT (y/2)<>y THEN LET c$="C": RETURN
7920 LET c$="L": RETURN
7930 IF x=2 THEN LET c$="G"
7932 IF x=1 THEN LET c$="E"
7940 RETURN
8000 PAPER 0: INK 0: CLS : LET y=10: LET x=0: LET n=9: LET c=7: LET s=1: LET j=2: GO SUB 8500: LET j=1
8010 LET x=x+1: LET y=y+3: LET s=11: LET c=4: GO SUB 8500
8020 LET x=x+1: LET y=y+3: LET s=21: LET n=8: GO SUB 8500
8030 LET x=x+1: LET y=y+3: LET s=31: LET n=6: GO SUB 8500
8040 LET x=29: LET y=16: LET d$="  ": LET n=7: GO SUB 8600
8050 LET x=0: LET y=19: GO SUB 8600
8060 LET x=27: LET d$="    ": GO SUB 8600
8070 LET x=24: LET d$="  ": LET n=2: GO SUB 8600
8080 LET x=0: LET y=0: LET xs=2: LET ys=2: LET cs=6: LET d$="sinclair": INK 4: GO SUB 9400
8090 LET x=2: LET y=16: LET xs=1: LET ys=1: LET cs=7: LET d$="ZXSpectrum": INK 7: GO SUB 9400
8100 RETURN
8500 PRINT AT y-1,x;: FOR i=s TO s+n: PRINT PAPER c;"\''\''"; PAPER 0;" ";: NEXT i
8510 PRINT AT y,x;: FOR i=s TO s+n: PRINT PAPER 5;f$(j,i);" "; PAPER 0;" ";: NEXT i
8520 PRINT AT y+1,x;: FOR i=s TO s+n: PRINT PAPER 5; INK 2;"\..\.."; PAPER 0;" ";: NEXT i
8530 RETURN
8600 PAPER n: PRINT AT y,x;d$;AT y+1,x;
8610 FOR i=1 TO LEN d$: PRINT "\..";: NEXT i: PAPER 0: RETURN
8700 LET x=12
8710 PRINT AT y,x; INK 5;"\..\..\..\..\..\..\..": FOR i=1 TO 3: PRINT AT y+i,x; PAPER 5;"       ": NEXT i: PRINT AT y+4,x; INK 5;"\''\''\''\''\''\''\''"
8720 PRINT AT y-1,x; INK 4; FLASH f(1);"CODE";AT y+5,x; INK 2; FLASH f(5);"IN"
8730 PAPER 5: PRINT AT y+1,x+4; INK 2; FLASH f(3);"AT"; INK 7;AT y+3,x+2; FLASH f(4);"INPUT"
8740 FLASH f(2): LET x=8*x+2: LET y=8*y+7: INK 7: LET d$="I": LET xs=2: LET ys=2: LET cs=8: GO SUB 9400
8790 FLASH 0: RETURN
8900 BORDER 6: PAPER 6:: INK 0: CLS : LET d$="STOP THE TAPE": LET y=96: FLASH 1: GO SUB 9700: FLASH 0: RETURN
8920 LET y=32: LET d$="KEYBOARD TRAINER": GO SUB 9700: LET y=48: LET d$="SERIES": GO SUB 9700: LET y=144: INK 1: LET d$="PSION \*1982": GO TO 9700
9000 CLEAR : SAVE "lesson3" LINE 9100
9010 SAVE "mcode" CODE 32256,340
9020 STOP
9100 CLEAR 32255: LOAD "mcode" CODE
9110 GO SUB 8900: GO TO 1
9150 GO SUB 9200: IF ch>229 AND z+133<256 AND z+133>229 THEN LET z=z+133
9155 IF ch=z OR z=226 AND ch<>226 THEN RETURN
9160 GO TO 9950
9200 POKE 23560,0
9210 LET z=PEEK 23560: IF z=0 THEN GO TO 9210
9220 IF z=14 AND PEEK 23617<>1 THEN POKE 23617,1: RETURN
9221 IF z=15 AND PEEK 23617<>2 THEN POKE 23617,2: RETURN
9230 IF z=6 THEN LET w=USR 32580
9245 POKE 23617,0: RETURN
9250 PRINT AT 0,22;"         ";AT 0,22;: LET l=0: LET k$=k$+CHR$ 13
9270 LET l=l+1: LET ch= CODE k$(l): GO SUB 9150: IF l=0 OR z=13 OR z=226 THEN RETURN
9280 PRINT CHR$ z;: GO TO 9270
9292 LET d$="ENTER": GO TO 9950
9390 LET xs=1: LET ys=2: LET x=(256-cs*LEN d$)/2
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: LET w=LEN d$: FOR i=1 TO w: POKE a+i, CODE d$(i): NEXT i: POKE a+w+1,255: LET w=USR 32256: RETURN
9600 LET x=(256-24*LEN d$)/2: LET xs=3: LET ys=4: LET cs=8: GO TO 9400
9700 LET x=(256-16*LEN d$)/2
9710 LET xs=2: LET ys=2: LET cs=8: GO TO 9400
9900 RANDOMIZE : LET ch=INT (24*RND+97)
9910 PRINT "Press "; FLASH 1;CHR$ ch; FLASH 0;" to continue": GO TO 9150
9920 FOR i=30 TO 0 STEP -1: BEEP .003,i: NEXT i: RETURN
9930 GO SUB 9960: LET y=32: INK 7: GO TO 9600
9940 GO SUB 8000: LET d$="TEST": GO SUB 9930: PAUSE 50: RETURN
9942 PAPER 6: INK 0: LET d$="Press STOP to exit": LET xs=2: LET ys=2: LET cs=7: LET x=0: LET y=176: GO SUB 9400: PAPER 0: INK 7: GO TO 9960
9950 LET d$="WRONG!": GO SUB 9930: GO SUB 9920: GO SUB 8000: LET l=0: INK 7: LET k$=CHR$ z: GO SUB 7100: LET d$="You pressed "+d$: LET y=24: LET cs=7: GO SUB 9390: LET d$=CHR$ ch
9952 GO SUB 7600: LET k$=CHR$ ch: GO SUB 7100: LET d$="It should have been "+d$: LET y=40: LET cs=7: GO SUB 9390: PRINT INK 6; FLASH 1;AT 8,11;"TRY AGAIN": GO SUB 9980: GO TO 9150
9960 FOR j=0 TO 5: PRINT AT 3+j,0;"                                ": NEXT j: RETURN
9970 PAPER 6: INK 0: LET ch=INT (26*RND+97): LET d$="Press "+CHR$ ch+" to continue": LET y=176: LET cs=8: GO SUB 9390: GO TO 9150
9980 PAPER 6: INK 0: LET d$="Press the flashing key or keys": LET y=176: LET cs=8: GO TO 9390
9999 PRINT PEEK 23730+256*PEEK 23731-PEEK 23653-256*PEEK 23654
