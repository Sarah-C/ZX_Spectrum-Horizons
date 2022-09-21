Check B8546503
Auto 8224

# Run-time Variables

Var y: Num = 176
Var x: Num = 28
Var a: Num = 23310
Var w: Num = 25
Var dd: Num = 9900
Var cs: Num = 8
Var xs: Num = 1
Var ys: Num = 2
Var i: NumFOR = 8, 25, 1, 9940, 3
Var d$: Str = "Press any key to continue"

# End Run-time Variables

   5 GO SUB 9500
   6 CLEAR : DIM i(2): DIM p(2)
   7 DIM t(12)
  10 PAPER 7: INK 0: CLS
  20 PRINT ,,,,,,"   MONTE CARLO"
  30 PRINT ,,,," This program uses the RND "
  35 PRINT " function to simulate the fall"
  40 PRINT " of two dice, and displays the"
  45 PRINT " resulting probability"
  50 PRINT " distribution on a bar chart."
  55 PRINT ,,"    It runs in two stages, "
  60 PRINT " firstly on a small scale for"
  65 PRINT " the initial behaviour and then"
  70 PRINT " on a larger scale to "
  75 PRINT " demonstrate how the observed"
  80 PRINT " values (shown in green)"
  85 PRINT " approach (slowly) the expected"
  90 PRINT " ones (shown in black)."
  95 PRINT ,," Press any key to continue-": PAUSE 0
 120 BORDER 7
 130 LET th=0
 140 LET ti=0
 150 LET sf=1
 160 LET ti=0
 170 LET stage=1
 500 LET x=10
 505 LET si=7: LET sp=1
 510 LET i(1)=6: LET p(1)=2
 520 LET i(2)=3: LET p(2)=1
 530 LET PAPER =7: LET INK =4
 540 PAPER PAPER : INK INK : CLS
 545 GO TO 900
 550 PRINT INK ti;AT 0,24;"THROWS"
 560 PRINT INK ti;AT 1,26;th
 570 
 575 GO TO 600
 580 PRINT INK si; PAPER sp;AT 21,0;"2  3  4  5  6  7  8  9  10 11 12": RETURN
 600 REM set up dice colours
 610 FOR d=1 TO 2
 620 INK i(d): PAPER p(d)
 630 GO SUB 8700
 640 \{i0} PAPER PAPER
 650 FOR i=0 TO 3
 660 PRINT OVER 1;AT i,x;" "
 670 NEXT i
 680 FOR z=x TO x+3
 690 PRINT OVER 1;AT i-1,z;" "
 700 NEXT z
 705 LET x=16
 710 NEXT d
 720 RETURN
 900 GO SUB 550
1000 REM main loop
1005 IF INKEY$<>"" THEN GO TO 7000
1010 GO SUB 8000
1020 LET tot=d1+d2
1025 LET b=3*(tot-2): GO SUB 580: GO SUB 2110
1030 LET t(tot)=t(tot)+1
1035 LET th=th+1: PRINT INK ti;AT 1,26;th
1040 IF stage=2 THEN GO SUB 2000: GO SUB 4000: GO TO 1000
1100 GO SUB 4500
1500 GO TO 1000
2000 REM Update chart
2020 IF t(tot)=135 THEN GO TO 7000
2030 LET h=INT t(tot)/sf+8
2040 LET b=3*(tot-2)
2100 PLOT b*8+8,h: DRAW 7,0
2105 RETURN
2110 PRINT BRIGHT 1; INK 7; PAPER 1;AT 21,b;tot
2250 RETURN
2300 REM height is even
2310 PRINT OVER 1;AT INT h,b;"\''\''"
2500 RETURN
3000 REM Update high res chart
3010 IF t(tot)=140 THEN STOP
4000 REM Plot theoretical graph
4040 LET den=th/36
4050 FOR j=0 TO 5
4060 LET h=INT ((6-j)*den+0.5)+8
4070 LET b=(5-j)*24
4090 PLOT INK ti;b,h: DRAW INK ti;7,0
4095 LET b=247-b
4100 PLOT INK ti;b,h: DRAW INK ti;-7,0
4150 NEXT j
4200 RETURN
4500 REM the 1st loop
4520 LET h=20-INT (t(tot)/2-.4)
4530 LET b=(tot-2)*3
4540 IF t(tot)=34 THEN LET stage=2: GO TO 5000
4550 IF t(tot)/2=INT (t(tot)/2) THEN GO TO 4600
4560 PRINT OVER 1;AT INT h,b;"\..\.."
4570 RETURN
4600 REM height is even
4610 PRINT OVER 1;AT INT h,b;"\''\''"
4620 RETURN
5000 LET den=th/35
5005 PAPER PAPER : CLS : GO SUB 550
5006 PRINT INK 0;AT 0,0;"  RESULTS"
5007 PRINT INK 0;AT 1,0;"\::": PRINT INK 0;AT 1,2;"Expected"
5008 PRINT INK 4;AT 2,0;"\::": PRINT INK 0;AT 2,2;"Observed"
5010 FOR j=0 TO 5: LET h=INT ((6-j)*den+0.5)+8: LET b=(5-j)*24
5015 LET bb=b
5020 FOR k=8 TO h
5025 LET b=bb
5030 PLOT INK ti;b,k: DRAW INK ti;7,0
5040 LET b=247-b
5050 PLOT INK ti;b,k: DRAW INK ti;-7,0
5052 INK 4
5060 NEXT k
5070 NEXT j
5080 FOR i=2 TO 12
5090 LET tot=i
5100 LET t=t(tot)
5110 FOR j=1 TO t
5120 LET t(tot)=j
5130 GO SUB 2000
5140 NEXT j
5150 NEXT i
5170 INK 0: PAPER 7: LET ys=1: LET xs=1: LET cs=8: LET y=176: LET d$="Press any key to stop": GO SUB 9900
5180 LET x=16: GO TO 1000
7000 INK 0: PAPER 7: LET ys=1: LET xs=1: LET cs=8: LET y=176: LET d$=" Press y to run again ": GO SUB 9900: LET y=184: LET d$="or any other key to continue": GO SUB 9900
7040 LET d$=INKEY$: IF d$="" THEN GO TO 7040
7050 IF d$="y" THEN GO TO 6
7060 LET y=176: LET xs=2: LET ys=2: LET d$=" START THE TAPE ": GO SUB 9900: LOAD "character"
8000 LET d1=INT (RND*6+1): LET d2=INT (RND*6+1)
8010 INK 8: PAPER 8: GO SUB 8700: LET x=16: GO SUB 8700
8020 GO SUB 8000+d1*100: LET x=10: GO SUB 8000+d2*100: INK INK : PAPER PAPER
8040 RETURN
8100 PRINT AT 0,x;"\{vi}\: \{vn}\::\::\::"
8110 PRINT AT 1,x;"\{vi}\: \{vn}\::\{vi}\. \{vn}\::"
8130 PRINT AT 2,x;"\ :\::\::\::"
8140 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8150 RETURN
8210 PRINT AT 0,x;"\{vi}\: \{vnvi}\. \{vn}\::\::"
8220 PRINT AT 1,x;"\{vi}\: \{vn}\::\::\::"
8230 PRINT AT 2,x;"\{vivivnvnvn}\ :\::\::\':"
8240 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8250 RETURN
8310 PRINT AT 0,x;"\{vivi}\: \. \  \  \{vn}"
8320 PRINT AT 1,x;"\ :\::\':\::"
8330 PRINT AT 2,x;"\{vivivnvnvn}\ :\::\::\':"
8340 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8350 RETURN
8410 PRINT AT 0,x;"\ :\':\::\':"
8420 PRINT AT 1,x;"\{vi}\: \{vn}\::\::\::"
8430 PRINT AT 2,x;"\ :\':\::\':"
8440 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8450 RETURN
8510 PRINT AT 0,x;"\ :\':\::\':"
8520 PRINT AT 1,x;"\ :\::\':\::"
8530 PRINT AT 2,x;"\ :\':\::\':"
8540 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8550 RETURN
8610 PRINT AT 0,x;"\ :\':\::\':"
8620 PRINT AT 1,x;"\ :\':\::\':"
8630 PRINT AT 2,x;"\ :\':\::\':"
8640 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8650 RETURN
8700 PRINT AT 0,x;"\{vi}\: \{vn}\::\::\::"
8720 PRINT AT 1,x;"\{vi}\: \{vn}\::\::\::"
8730 PRINT AT 2,x;"\ :\::\::\::"
8740 PRINT AT 3,x;"\{vi}\:.\..\..\..\{vn}"
8750 RETURN
8888 BRIGHT 0: INK 0: PAPER 7: BORDER 7: CLS : LIST : STOP
9000 GO SUB 2000: STOP
9100 CLEAR : SAVE "montecarlo" LINE 9110: SAVE "p" CODE 32196,300: STOP
9110 CLEAR 32195: LOAD "" CODE : RUN
9500 PAPER 5: BORDER 5
9505 LET dd=9900
9510 INK 0
9520 CLS
9530 FLASH 1
9535 LET cs=8
9540 LET d$="STOP THE TAPE"
9550 LET xs=2: LET ys=2
9560 LET y=96
9570 GO SUB dd
9580 FLASH 0
9600 LET d$="MONTE CARLO"
9610 LET xs=2: LET ys=3
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
9900 LET x=(256-cs*xs*LEN d$)/2
9910 LET a=23306: POKE a,x: POKE a+1,y
9920 POKE a+2,xs: POKE a+3,ys
9930 POKE a+4,cs: LET a=a+4
9940 LET w=LEN d$: FOR i=1 TO w
9950 POKE a+i, CODE d$(i): NEXT i
9960 POKE a+w+1,255: LET w=USR 32196
9970 RETURN
