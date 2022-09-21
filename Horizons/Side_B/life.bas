Check F2AA7602
Auto 8224

# Run-time Variables

Var y: Num = 8
Var x: Num = 0
Var a: Num = 23310
Var w: Num = 4
Var dd: Num = 8520
Var cs: Num = 8
Var xs: Num = 8
Var ys: Num = 8
Var i: NumFOR = 5, 4, 1, 8520, 11
Var d$: Str = "LIFE"
Var a$: StrArray(768) = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "

# End Run-time Variables

  10 DIM a$(768)
  15 GO SUB 9500
  30 RANDOMIZE USR 32008
  50 BORDER 6: LET PAPER =7: LET INK =0: PAPER PAPER : INK INK : CLS
 120 GO TO 310
 150 INPUT "Enter q to load the next programor just press ENTER to repeat "; LINE d$
 160 IF d$="" THEN GO TO 190
 170 IF d$="q" THEN GO TO 900
 180 GO TO 150
 190 PAPER 7: INK 0: CLS : PRINT : PRINT : PRINT
 200 PRINT ,,,,,,,,: PRINT "  Being colour 0 - 7 ? ";
 205 INPUT INK : IF INK <0 OR INK >7 THEN GO TO 200
 210 PRINT INK INK ; INK
 215 PRINT : PRINT "  Background colour  ? ";
 220 INPUT PAPER : IF PAPER <0 OR PAPER >7 THEN GO TO 215
 225 PRINT INK PAPER ; PAPER ;
 226 IF PAPER =7 THEN PRINT INK 0; PAPER
 227 PRINT
 230 PRINT
 240 PRINT : PRINT "  Delay between"
 250 PRINT "  generations in seconds ? ";
 260 INPUT PAUSE
 270 PRINT PAUSE
 280 LET PAUSE = PAUSE *50
 300 PAUSE 100
 305 GO TO 420
 310 GO SUB 8100: CLS
 320 PRINT : PRINT : PRINT
 330 PRINT "  To set up initial beings use"
 340 PRINT " the cursor direction keys,"
 350 PRINT " 5 - 8 to move the cursor,"
 360 PRINT " pressing the shift key as well"
 370 PRINT " when positioning a being."
 375 PRINT " Press Q to start life, "
 376 PRINT " R to reinitialise and S"
 377 PRINT " to stop."
 380 GO TO 240
 390 PAUSE 33000
 420 POKE 32188,8* PAPER + INK
 430 POKE 32191, PAPER +8* PAPER
 440 POKE 32178, PAPER *8+ PAPER
 450 LET p$=CHR$ (\{f0f0f0f0f0f0f0f0} PAPER +8* PAPER )
 455 PAPER PAPER : INK PAPER
 460 FOR i=1 TO 32: LET a$(i)=p$: LET a$(769-i)=p$: NEXT i
 490 CLS : INK 0: PAPER 7: LET y=176: LET d$="Use arrow keys and CAPS SHIFT to": GO SUB 8500: LET y=184: LET d$="set up, then press q to commence": GO SUB 8500: INK PAPER : PAPER PAPER
 500 GO SUB 1000
 510 PRINT OVER 1; FLASH 1; PAPER PAPER ; INK INK ;AT x,y;"\{vivn} "
 520 GO SUB 5000
 550 GO TO 510
 605 LET y=176: LET ys=2: LET xs=2: LET d$="Press S to stop.": GO SUB 8510: RANDOMIZE USR 32059
 610 RANDOMIZE USR 32008
 615 LET key=PEEK 23560: POKE 23560,0: IF key=115 THEN GO TO 150
 620 PAUSE ABS PAUSE +1: GO TO 610
 900 BORDER 1: PAPER 1: CLEAR 32599: LET xs=2: LET ys=2: LET y=72: LET d$="START THE TAPE": GO SUB 8510: LET xs=1: LET y=144: LET d$="Loading draw": GO SUB 8510: LOAD "draw"
1000 REM init
1010 LET x=10: LET y=15
1020 PRINT "\a\d\e\f\g\i\a\e\d\b\a\a\a\a\a\a\b\c\d\e\f\g\h\i\a\d\c\b\h\i\a\d\c\f\g\g\f\f\d\f\f\f\f\d\g\g\g\h\d\c\h\f\d\a\b\c\h\b\h\b\d\e\a\f\c\g\b\b\h\i\a\b\c\d\e\f\g\h\i\e\c\d\a\b\h\i\e\d\a\c\h\i\e\b\a\e\c\g\h\h\c\h\c\b\h\a\b\h\b\a\h\e\h\c\a\d\b\i\h\g\a\d\h\f\g\i\e\b\c\e\i\a\d\f\g\h\b\c\i\i\h\b\g\f\e\d\c\a\e\f\g\i\h\h\g\f\a\d\f\g\h\i\e\i\e\a\e\d\a\i\d\i\d\e\b\e\a\b\a\h\e\d\b\i\e\c\a\d\e\d\c\g\f\d\d\f\g\g\b\i\i\b\g\i\b\g\i\b\g\i\b\g\i\b\g\e\d\a\e\d\a\e\d\a\e\d\a\b\c\b\c\a\b\c\a\b\c\a\b\c\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\e\f\g\e\g\f\g\e\g\e\f\e\g\e\f\e\g\f\e\g\f\e\g\f\e\g\f\e\g\f\e\g\i\i\h\g\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\h\a\i\i\h\a\i\h\a\b\c\a\b\c\a\b\c\a\b\c\a\b\c\d\b\c\b\d\b\c\d\b\c\d\b\e\d\b\e\d\b\e\d\b\e\d\i\e\d\i\e\d\i\e\d\i\e\e\d\i\e\d\i\e\d\i\d\i\e\d\i\i\f\e\i\f\i\e\f\i\e\f\i\e\f\i\e\f\i\e\f\i\e\f\f\f\f\g\i\f\g\i\f\g\i\f\g\f\g\i\f\g\i\f\i\f\g\f\g\i\f\g\i\h\g\h\a\h\a\g\a\g\h\d\h\d\g\d\g\h\d\b\c\b\c\b\a\b\a\b\a\c\b\c\b\c\b\c\b\c\b\a\b\a\c\b\c\b\a\c\b\a\c\b\a\c\a\i\a\i\a\e\i\a\e\i\a\i\e\c\i\c\i\i\c\e\e\c\e\i\e\i\e\i\e\i\i\a\b\c\d\e\f\g\h\i\i\i\h\a\i\a\h\i\a\h\i\h\i\h\i\a\a\h\b\h\e\h\e\h\b\e\h\e\h\b\e\h\h\b\e\h\b\b\e\h\h\e\h\b\e\b\b\e\e\h\b\e\e\h\b\e\e\i\h\e\h\i\a\h\a\i\i\a\a\a\a\e\e\a\c\d\e\c\e\a\d\a\d\a\d\a\c\e\a\h\i\b\e\h\i\b\e\d\g\f\c\d\f\c\f\c\f\b\d\g\b\d\b\g\d\a\e\c\g\f\i\b\g\d\c\e\i\b\g\d\a\e\i\a\e\d\f\b\i\a\e\d\a\a"
1050 RETURN
5000 REM move cursor and set up
5010 REM beings
5020 LET k=PEEK 23560: POKE 23560,0
5030 IF k=113 THEN PRINT OVER 1; INK PAPER ;AT x,y;" ": GO TO 605
5040 IF (k=53 OR k=8) THEN GO TO 5300
5050 IF (k=56 OR k=9) THEN GO TO 5400
5060 IF (k=55 OR k=11) THEN GO TO 5100
5070 IF (k=54 OR k=10) THEN GO TO 5200
5080 RETURN
5090 PRINT OVER 1; PAPER PAPER ; INK PAPER ;AT x,y;" ": RETURN
5100 IF x=0 THEN RETURN
5105 GO SUB 5090
5110 IF k<12 THEN GO SUB 6000
5120 LET x=x-1: RETURN
5200 IF x=21 THEN RETURN
5205 GO SUB 5090
5210 IF k<12 THEN GO SUB 6000
5220 LET x=x+1: RETURN
5300 IF y=0 THEN RETURN
5305 GO SUB 5090
5310 IF k<12 THEN GO SUB 6000
5320 LET y=y-1: RETURN
5400 IF y=31 THEN RETURN
5405 GO SUB 5090
5410 IF k<12 THEN GO SUB 6000
5420 LET y=y+1: RETURN
6000 REM set attr for shift move
6005 INK INK
6010 PAPER PAPER
6020 PRINT OVER 1;AT x,y;" "
6100 RETURN
8100 PRINT ,,"           LIFE"
8104 PRINT "           ----"
8120 PRINT ,,"   RULES"
8130 PRINT ,,"  The board is divided up into "
8140 PRINT " a square grid.  Each unit "
8150 PRINT " square has 8 neighbours, and"
8155 PRINT " can be either alive or dead."
8157 PRINT ,,"  Each generation the number     (n) of neighbours a cell has    decides whether life will begin (n=3), survive (n=2 or 3),or    die (n<2  or n>3)."
8480 PRINT ,,,,,,"  Press any key to continue ": PAUSE 0
8490 CLS
8499 RETURN
8500 LET xs=1: LET ys=1
8510 LET cs=8: PAPER 1: INK 7
8520 LET x=(256-xs*cs*LEN d$)/2: LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: LET w=LEN d$: FOR i=1 TO w: POKE a+i, CODE d$(i): NEXT i
8530 POKE a+w+1,255: LET w=USR 32196
8535 RETURN
8540 LET pp=8*7
8550 FOR i=23232 TO 23263: POKE i,pp: NEXT i: RETURN
8600 GO SUB 8500: STOP
8888 PAPER 7: INK 0: LIST : STOP
9000 CLEAR 31999: SAVE "life" LINE 9010: SAVE "p" CODE 32000,480: SAVE "p" CODE USR "a",72: STOP
9010 CLEAR 31999: LOAD "" CODE : LOAD "" CODE USR "a": RUN
9500 PAPER 5
9505 LET dd=8520
9510 INK 0
9515 BORDER 5
9520 CLS
9530 FLASH 1
9535 LET cs=8
9540 LET d$="STOP THE TAPE"
9550 LET xs=2: LET ys=2
9560 LET y=96
9570 GO SUB dd
9580 FLASH 0
9600 LET d$="LIFE"
9610 LET xs=8: LET ys=8
9620 LET y=8
9650 GO SUB dd
9700 LET d$="PSION  \* 1982"
9710 LET xs=2: LET ys=2
9720 LET y=144
9750 GO SUB dd
9800 LET d$="Press any key to continue"
9810 LET xs=1: LET ys=2
9820 LET y=176
9850 GO SUB dd
9880 PAUSE 0
9890 RETURN
