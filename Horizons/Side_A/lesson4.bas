Check A3157F4E
Auto 8224

# Run-time Variables

Var y: Num = 176
Var x: Num = 52
Var a: Num = 23310
Var w: Num = 19
Var xs: Num = 1
Var ys: Num = 2
Var cs: Num = 8
Var ch: Num = 97
Var d: NumArray(5) = 0, 0, 0, -1, 1
Var i: NumFOR = 20, 19, 1, 9400, 10
Var d$: Str = "Press a to continue"
Var f$: StrArray(5, 38) = "\#007\#006\#004\#005\#008\#010\#011\#009\#015\#012QWERTYUIOPASDFGHJKL ZXCVBNM\#0141234567890qwertyuiopasdfghjkl\#013zxcvbnm !\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;"\#226\#195\#205\#204\#203^-+= :\`?/*,. \#206\#168\#202\#211\#212\#209\#210\#169\#207\#208\#181\#182\#183\#214\#213[]\#191\#223\*~|\\{}\#216\#174\#170\#171 \#215\#217\#218\#219\#220\#222\#221           \#178\#179\#180\#186\#165\#193\#194\#175\#190\#173\#227\#229\#228\#188\#189\#187\#176\#177\#177\#192 \#184\#185\#224\#225\#196\#166\#167"

# End Run-time Variables

  10 DIM f$(5,38)
  11 LET f$(1)=CHR$ 7+CHR$ 6+CHR$ 4+CHR$ 5+CHR$ 8+CHR$ 10+CHR$ 11+CHR$ 9+CHR$ 15+CHR$ 12+"QWERTYUIOPASDFGHJKL ZXCVBNM"+CHR$ 14
  12 LET f$(2)="1234567890qwertyuiopasdfghjkl"+CHR$ 13+"zxcvbnm "
  13 LET f$(3)="!\@#$%&'()_\#199\#201\#200<>\#198\#197\#172;""\#226\#195\#205\#204\#203^-+= :\`?/*,. "
  14 LET f$(4)="\#206\#168\#202\#211\#212\#209\#210\#169\#207\#208\#181\#182\#183\#214\#213[]\#191\#223\*~|\\{}\#216\#174\#170\#171 \#215\#217\#218\#219\#220\#222\#221 "
  15 LET f$(5)="          \#178\#179\#180\#186\#165\#193\#194\#175\#190\#173\#227\#229\#228\#188\#189\#187\#176\#177\#177\#192 \#184\#185\#224\#225\#196\#166\#167 "
  20 DIM d(5): LET d(4)=-1: LET d(5)=1
 100 GO SUB 8920: LET y=0: LET d$="LESSON FOUR": GO SUB 9700: GO SUB 9970
 200 GO SUB 8000: PRINT AT 4,0;"The \{f1}G\{f0} cursor is used to produce the graphics symbols on keys 1-8and for user defined graphics."
 205 LET d=0: FOR q=0 TO 7: GO SUB 7310: NEXT q: GO SUB 9970
 230 PAPER 0: INK 7: CLS : LET y=5: LET d$="THE E CURSOR": GO SUB 9700: PRINT AT 3,0;"The \{f1}E\{f0} cursor is used to access  the keywords and symbols which  are above and below the keys"
 235 LET y=9: DIM f(5): LET f(1)=1: LET f(5)=1: GO SUB 8700
 240 PAPER 0: INK 7: PRINT AT 17,0;"The upper (green) symbol is     accessed unless SYMBOL SHIFT is pressed when the lower (red)    symbol is produced.": GO SUB 9970
 300 GO SUB 9940: GO SUB 9960: GO SUB 7020: PRINT AT 4,0;"Remember - you must make the \{f1}E\{f0}  cursor current before you can   access the symbols which are    above and below the keys.": GO SUB 9970
 310 GO SUB 9942: GO SUB 7050
 320 GO SUB 9960: GO SUB 7025
 325 LET ch=INT (33+193*RND): IF ch>127 AND ch<165 THEN GO TO 325
 330 LET k$=CHR$ ch: GO SUB 7100: LET d$="PRESS "+d$: LET y=40: GO SUB 9700: LET l=1: GO SUB 9150: IF l=0 THEN GO SUB 8000: GO TO 310
 340 IF z<>226 THEN GO TO 320
 350 GO SUB 7010
6000 INK 0: PAPER 6: CLS : LET d$="END": LET xs=6: LET ys=6: LET cs=8: LET y=16: LET x=56: GO SUB 9400
6010 LET d$="Press y to run again": LET y=80: GO SUB 9390: LET y=120: LET d$="or any other key to continue": GO SUB 9390: GO SUB 9200: IF CHR$ z="y" THEN RUN
6030 LET y=80: LET d$="START THE TAPE": GO SUB 9700
6040 LET d$="     Loading dictionary     ": LET y=120: GO SUB 9390
6050 LOAD "dictionary"
6999 PAPER 7: INK 0: STOP
7010 GO SUB 9960: LET d$="O.K.": GO SUB 9930: FOR i=0 TO 100: NEXT i: RETURN
7020 LET d$="CURRENT": LET x=112: LET y=8: INK 1: GO SUB 9710
7025 INK 7: GO SUB 7900: FLASH 1: LET d$=c$: LET y=8: LET x=232: GO SUB 9710: FLASH 0: RETURN
7030 LET d$="MAKE": LET x=8: LET y=40: GO SUB 9710: LET d$=c$: LET x=88: FLASH 1: GO SUB 9710: FLASH 0: LET d$="CURRENT": LET x=120: GO TO 9710
7050 POKE 23617,0: LET w=USR 32570: RETURN
7090 LET k$=d$
7100 LET w= CODE k$: IF w>31 AND w<165 THEN LET d$=k$: RETURN
7105 IF w>31 THEN GO TO 7180
7110 IF w=13 THEN LET d$="ENTER": RETURN
7112 IF w=14 THEN LET d$="CAPS/SYMBOL SHIFT": RETURN
7120 FOR i=1 TO 10: IF k$=f$(1,i) THEN GO TO 7130
7125 NEXT i: LET d$="?": RETURN
7130 LET d$="CAPS SHIFT-"+STR$ i: RETURN
7180 PRINT INK 0; PAPER 0;AT 21,0;"00000000000000000000000000000000";AT 21,0;k$: LET d$="": FOR x=0 TO 9: LET e$= SCREEN$ (21,x): IF e$="0" THEN RETURN
7190 LET d$=d$+e$: NEXT x: RETURN
7200 FOR j=1 TO 5: FOR i=1 TO 38: IF d$=f$(j,i) THEN RETURN
7210 NEXT i: NEXT j: RETURN
7300 LET q=i-1: LET d=d(j): LET e$=f$(1,i)
7310 LET y=INT (q/10): LET x=(q-y*10)*3+y: LET y=y*3+10-d
7320 PRINT INK 8; PAPER 8; FLASH 1;AT y,x; OVER 1;"  ": RETURN
7600 IF ch>229 THEN LET d$=CHR$ (ch-133)
7605 GO SUB 7200: GO SUB 7300: IF j=2 THEN RETURN
7610 IF j=3 THEN LET i=38: GO TO 7300
7620 IF j=4 THEN LET j=1: LET i=38: GO SUB 7300: LET j=4: RETURN
7630 IF j=1 THEN GO SUB 7900: IF c$="L" THEN PRINT AT 19,0; FLASH 1;"  ": RETURN
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
8740 FLASH f(2): LET x=8*x+2: LET y=8*y+8: INK 7: LET d$="I": LET xs=2: LET ys=2: LET cs=8: GO SUB 9400
8790 FLASH 0: RETURN
8900 BORDER 6: PAPER 6: INK 0: CLS : LET d$="STOP THE TAPE": LET y=96: FLASH 1: GO SUB 9700: FLASH 0: RETURN
8920 LET y=32: LET d$="KEYBOARD TRAINER": GO SUB 9700: LET y=48: LET d$="SERIES": GO SUB 9700: LET y=144: INK 1: LET d$="PSION \*1982": GO TO 9700
9000 CLEAR : SAVE "lesson4" LINE 9100
9010 SAVE "mcode" CODE 32256,340
9020 STOP
9100 CLEAR 32255: LOAD "mcode" CODE
9110 GO SUB 8900: GO TO 1
9150 GO SUB 9200: IF ch>229 AND z+133<256 AND z+133>229 THEN LET z=z+133
9155 IF ch=z OR z=226 AND ch<>226 THEN RETURN
9160 GO TO 9950
9200 POKE 23560,0
9210 LET z=PEEK 23560: IF z=0 THEN GO TO 9210
9220 IF z=14 AND PEEK 23617<>1 THEN POKE 23617,1: GO SUB 7025: GO TO 9200
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
9950 LET d$="WRONG!": GO SUB 9930: GO SUB 9920: GO SUB 8000: INK 7: GO SUB 7020: LET l=0: LET k$=CHR$ z: GO SUB 7100: LET d$="You pressed "+d$: LET y=24: LET cs=7: GO SUB 9390: LET d$=CHR$ ch
9952 GO SUB 7600: LET k$=CHR$ ch: GO SUB 7100: LET d$="It should have been "+d$: LET y=40: LET cs=7: GO SUB 9390: PRINT INK 6; FLASH 1;AT 8,11;"TRY AGAIN": IF j<4 THEN LET d$="Press the flashing key or keys": GO SUB 9980: GO TO 9150
9956 LET d$="Check that the mode is correct": GO SUB 9980: GO TO 9150
9960 FOR j=0 TO 5: PRINT AT 3+j,0;"                                ": NEXT j: RETURN
9970 PAPER 6: INK 0: LET ch=INT (26*RND+97): LET d$="Press "+CHR$ ch+" to continue": LET y=176: LET cs=8: GO SUB 9390: GO TO 9150
9980 PAPER 6: INK 0: LET y=176: LET cs=8: GO SUB 9390: PAPER 0: INK 7: RETURN
