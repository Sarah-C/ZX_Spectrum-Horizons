Check 19565B0B
Auto 8224

# Run-time Variables

Var y: Num = 176
Var a: Num = 23310
Var ys: Num = 2
Var xs: Num = 1
Var i: NumFOR = 3, 25, 1, 9400, 9
Var d$: Str = "Press any key to continue"

# End Run-time Variables

  50 BORDER 6: PAPER 6: INK 0: CLS
  90 DIM r(8)
 100 DIM c(4)
 110 DATA 5,8,6,7
 120 FOR i=1 TO 4: READ c(i): NEXT i
 500 LET xpo=4: LET ypo=12
 600 GO SUB 8100
 620 LET r$="a": GO TO 7300
1000 GO SUB 8100
1170 PRINT "Use the arrow keys with or      without CAPS SHIFT to move the  flashing cursor about the grid."
1172 PRINT "The cursor square is filled-in  when CAPS SHIFT is pressed and  is cleared otherwise."
1174 PRINT "Press Q to quit this stage."
1200 LET x=-1: LET y=-1
1210 OVER 1
1220 GO SUB 5200
1224 PRINT AT yp,xp; FLASH 1;" "
1230 GO SUB 4000
1240 OVER 0
1250 GO SUB 4200
1300 GO SUB 6200
1301 PRINT "In which user-defined graphic   character do you want this      pattern entered?"
1304 PRINT '"Enter a to u"''"or just press ENTER to skip."
1310 INPUT LINE r$: IF r$="" THEN GO TO 1340
1311 LET r$=r$(1 TO 1)
1312 IF r$<"a" OR r$>"u" THEN GO TO 1310
1320 GO SUB 4400
1330 GO SUB 6000
1340 GO SUB 6200
1400 PRINT FLASH 1;"Press:"
1410 PRINT "Q to quit this program"
1420 PRINT "S to save characters on tape"
1430 PRINT "A to alter the pattern"
1440 PRINT "C to clear grid and start again"
1450 PRINT "P to pick up a character"
1500 POKE 23560,0
1505 LET k$=CHR$ PEEK 23560
1510 IF k$="q" THEN GO TO 9500
1520 IF k$="s" THEN GO TO 7000
1530 IF k$="a" THEN GO SUB 6200: GO TO 1170
1540 IF k$="c" THEN GO TO 1000
1550 IF k$="p" THEN GO TO 7200
1590 GO TO 1505
4000 REM Design character
4005 PAPER 2
4010 GO SUB 5300
4011 IF m=1 THEN GO TO 4100
4012 IF (x+1)*(y+1)*(x-8)*(y-8)=0 THEN LET m=7
4015 PRINT AT yp,xp; PAPER m;" "
4020 GO SUB 5400
4030 GO SUB 5200
4035 PRINT AT yp,xp; FLASH 1;" "
4040 GO TO 4010
4100 PRINT PAPER 7;AT yp,xp; FLASH 0;" "
4150 PAPER 6: RETURN
4200 REM Set r(8)
4210 LET y=ypo-8
4220 FOR j=1 TO 8
4230 LET sum=0: LET x=xpo
4250 FOR i=1 TO 8
4260 LET sum=2*sum
4270 LET p=INT (ATTR (y,x)/8)
4275 IF p=0 THEN LET sum=sum+1
4280 LET x=x+1
4290 NEXT i
4300 LET r(j)=sum
4310 LET y=y+1
4320 NEXT j
4340 RETURN
4400 REM Put r(8) into usr r$
4420 FOR i=0 TO 7
4430 POKE USR r$+i,r(i+1)
4440 NEXT i
4450 RETURN
5000 REM Draw grid
5010 PAPER 7: FOR j=ypo-9 TO ypo: PRINT AT j,xpo-1;"          ": NEXT j: PAPER 6
5020 LET xo=8*xpo: LET yo=8*(22-ypo)
5050 FOR j=0 TO 64 STEP 8
5060 PLOT xo,yo+j: DRAW 64,0
5070 NEXT j
5080 FOR j=0 TO 64 STEP 8
5090 PLOT xo+j,yo: DRAW 0,64
5100 NEXT j
5110 RETURN
5200 REM Screen coords from x,y
5210 LET xp=xpo+x
5220 LET yp=ypo-8+y
5230 RETURN
5300 REM Poll keyboard for cursor control keys
5301 LET key=PEEK 23560: POKE 23560,0
5302 LET m=1
5304 IF key= CODE "q" THEN RETURN
5310 LET m=7
5320 LET c=key-48
5330 IF c>=5 AND c<=8 THEN RETURN
5340 LET m=0
5345 LET c=c+41
5350 IF c<1 OR c>4 THEN GO TO 5300
5360 LET c=c(c)
5390 RETURN
5400 REM Change x,y as a function of c
5410 IF c<>5 THEN GO TO 5430
5420 IF x=-1 THEN RETURN
5425 LET x=x-1: RETURN
5430 IF c<>8 THEN GO TO 5450
5440 IF x=8 THEN RETURN
5445 LET x=x+1: RETURN
5450 IF c<>6 THEN GO TO 5470
5460 IF y=8 THEN RETURN
5465 LET y=y+1: RETURN
5470 IF y=-1 THEN RETURN
5480 LET y=y-1: RETURN
6000 REM Display user graphics
6010 INK 2
6020 PRINT AT 0,0;
6030 FOR i=65 TO 85
6040 PRINT CHR$ i;
6050 NEXT i
6060 INK 0: PRINT '
6070 FOR i=144 TO 164
6080 PRINT CHR$ i;
6090 NEXT i
6095 PRINT
6096 RETURN
6200 REM Clear lower screen
6210 PRINT AT ypo,0
6220 FOR y=ypo TO 20
6230 PRINT OVER 0;"                                "
6240 NEXT y
6245 PRINT AT ypo+3,0;
6250 RETURN
7000 REM Save on tape
7010 GO SUB 6200
7020 PRINT "Enter the character or characterrange that you wish to save"
7025 PRINT '"E.g."'"a  - to save character A        bk - to save characters B to K"
7030 GO SUB 8000
7035 IF LEN r$=1 THEN LET r$=r$+r$
7040 IF r$(1 TO 1)>r$(2) THEN GO TO 7030
7042 IF r$(1)>"u" THEN GO TO 7030
7050 LET b=USR r$(1 TO 1)
7060 LET l=USR r$(2 TO 2)-b+8
7065 GO SUB 6200: PRINT "Enter the file name of the code to be saved"
7066 INPUT LINE r$
7070 SAVE r$ CODE b,l
7090 GO TO 1340
7200 REM Pick up character
7210 GO SUB 6200
7220 PRINT "Which user-defined character do you wish to pick up?"
7230 PRINT ''"Enter a to u"
7240 GO SUB 8000: LET r$=r$(1 TO 1)
7300 OVER 1
7310 FOR y=0 TO 7
7320 LET b=PEEK (USR r$+y)
7330 LET s=128
7400 FOR x=0 TO 7
7410 LET t=INT (b/s)
7420 GO SUB 5200: PRINT AT yp,xp; PAPER 7*NOT t;" "
7430 LET b=b-t*s
7440 LET s=s/2
7470 NEXT x
7480 NEXT y
7490 OVER 0: GO TO 1340
8000 INPUT LINE r$
8010 IF r$="" THEN GO TO 8000
8020 IF r$<"a" OR r$>"u" THEN GO TO 8000
8040 RETURN
8100 OVER 0: GO SUB 6000: GO SUB 5000: OVER 1: GO TO 6200
9000 CLEAR : SAVE "character" LINE 9100
9010 SAVE " " CODE 32256,300: STOP
9100 CLEAR 32255: LOAD "" CODE
9110 BORDER 5: PAPER 5: INK 0: CLS : LET ys=2: LET xs=2: LET y=104: LET d$="STOP THE TAPE": FLASH 1: GO SUB 9400: FLASH 0
9120 LET xs=3: LET ys=3: LET y=16: LET d$="CHARACTER": GO SUB 9400: LET y=y+32: LET d$="GENERATOR": GO SUB 9400
9130 LET xs=2: LET ys=2: LET y=152: LET d$="PSION  \*1982": GO SUB 9400
9140 LET xs=1: LET y=176: LET d$="Press any key to continue": GO SUB 9400: PAUSE 0
9150 BORDER 7: PAPER 7: INK 0: CLS : PRINT "This is a program to aid the    generation of user defined      graphics characters."''"These characters have character codes from 144 to 164 inclusive and are normally entered by     pressing keys a to u in graphicsmode."''"Characters generated by this    routine can be saved on your owntape to be used at a later date by other programs, or to be     modified by this program."
9160 PRINT '"For more details, see chapter 14of the Spectrum manual."''"Press any key to continue": PAUSE 0
9190 RUN
9400 LET a=23306: POKE a,(256-8*xs*LEN d$)/2: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,8: LET a=a+4: FOR i=1 TO LEN d$: POKE a+i, CODE d$(i): NEXT i: POKE a+i,255: RANDOMIZE USR 32256: RETURN
9500 GO SUB 6200: LET xs=2: LET ys=2: LET y=128: LET d$="START THE TAPE": GO SUB 9400: LET xs=1: LET y=160: LET d$="Loading waves": GO SUB 9400
9510 LOAD "waves"
9999 PRINT PEEK 23730+256*PEEK 23731-PEEK 23653-256*PEEK 23654
