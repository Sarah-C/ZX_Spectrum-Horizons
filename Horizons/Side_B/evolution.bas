Check 8B646075
Auto 8224

# Run-time Variables

Var x: Num = 48
Var y: Num = 48
Var a: Num = 23310
Var w: Num = 7
Var xs: Num = 3
Var ys: Num = 3
Var cs: Num = 8
Var i: NumFOR = 8, 7, 1, 9400, 10
Var d$: Str = "RABBITS"
Var m$: StrArray(256) = "                                                                                                                                                                                                                                                                "
Var n$: StrArray(256) = "                                                                                                                                                                                                                                                                "

# End Run-time Variables

  10 DIM m$(256): DIM n$(256)
  20 BORDER 1: INK 7: PAPER 1
  25 CLS : FOR i=0 TO 64: POKE 23232+i,8: NEXT i
  30 GO SUB 5000: REM page 1
  40 PAUSE 0: CLS
  50 GO SUB 6000: REM page 2
  60 PAUSE 0: CLS
  70 GO SUB 7000: REM page 3
  80 PAUSE 0: CLS
  90 GO SUB 8000: REM page 4
 100 PAUSE 0: CLS
 110 REM set up example
 120 LET tau=0.1: LET t=4: LET r=0.3: LET f=0.9: LET td=0: LET u=3.75: LET v=32.35: LET d1=tau/t
 130 CLS : BORDER 7: FOR i=0 TO 64: POKE 23232+i,56: NEXT i: GO SUB 1000
 140 LET r=r+tau*r*(1-f): LET f=f+f*d1*(1-1/r)
 150 LET td=td+1
 170 LET x1=INT (12*SIN (PI*td/6)+0.5): LET y1=INT (12*COS (PI*td/6)+0.5)
 180 PLOT 128,152: DRAW x1,y1
 190 IF td>255 THEN GO TO 300
 191 IF td=2 THEN GO SUB 7499
 192 IF td=28 THEN GO SUB 7500
 193 IF td=77 THEN GO SUB 7510
 194 IF td=125 THEN GO SUB 7530
 195 IF td=146 THEN GO SUB 7540
 196 GO SUB 1500
 200 PRINT AT 1,1; INVERSE 1;r$(2 TO ): PRINT AT 1,28; INVERSE 1;f$(2 TO ): PRINT AT 0,18; INVERSE 1;INT ((td/2)+0.5)
 210 PLOT td,u*r+88: PLOT td,v*f: PLOT 128+x1,152+y1: DRAW INVERSE 1;-x1,-y1: GO SUB 4000: GO TO 140
 300 CLS : BORDER 1: INK 7: PAPER 1: FOR i=0 TO 64: POKE 23232+i,8: NEXT i
 301 GO SUB 8500: BORDER 7
 309 LET t=4: LET v=44: LET u=30: LET c2=3/200: LET c4=200/4
 310 INPUT "Enter starting number of rabbits (r between 4000 and 7000) "; LINE z$: GO SUB 8900: IF z=0 THEN GO TO 310
 315 LET rd=z: IF rd>7000 OR rd<4000 THEN GO TO 310
 320 INPUT "Enter starting number of foxes (f between 100 and 400) "; LINE z$: GO SUB 8900: IF z=0 THEN GO TO 320
 321 LET fd=z: IF fd>400 OR fd<100 THEN GO TO 320
 325 LET r=rd/8000: LET f=fd/200
 330 CLS : GO SUB 1000: REM set up screen
 500 LET td=0: LET l=1: LET d1=0.1/t
 510 FOR i=1 TO 2: LET r=r+0.1*r*(1-f): LET f=f+f*d1*(1-1/r): NEXT i
 520 LET td=td+1
 530 LET x1=INT (12*SIN (PI*td/6)+0.5): LET y1=INT (12*COS (PI*td/6)+0.5)
 540 PLOT 128,152: DRAW x1,y1
 550 LET p=INT (td+0.5): REM scale time for plotting
 560 IF p>255 THEN CLS : PRINT AT 21,0;"DO YOU WANT TO TRY AGAIN (Y/N)?": GO SUB 8515: CLS : GO TO 309
 570 LET n$(l)=CHR$ INT (u*r+0.5): LET m$(l)=CHR$ INT (v*f+0.5)
 580 IF  CODE n$(l)>=88 THEN GO SUB 2000
 590 IF  CODE m$(l)>=88 THEN GO SUB 3000
 595 GO SUB 1500
 600 PRINT AT 1,1; INVERSE 1;r$(2 TO ): PRINT AT 1,28; INVERSE 1;f$(2 TO ): PRINT AT 0,18; INVERSE 1;INT ((td/2)+0.5)
 610 PLOT p, CODE n$(l)+88: PLOT p, CODE m$(l): LET l=l+1: PLOT 128+x1,152+y1: DRAW INVERSE 1;-x1,-y1: GO SUB 4000: GO TO 510
1000 REM set up display
1005 PRINT AT 0,0;"RABBITS": PRINT AT 0,27;"FOXES": PRINT AT 0,11;"MONTHS"
1007 GO SUB 4000: REM draw clock
1010 PRINT AT 8,13; INVERSE 1;"rabbits"
1060 PRINT AT 12,14; INVERSE 1;"foxes"
1110 PRINT AT 21,13; INVERSE 1;"months"
1120 RETURN
1500 LET r$=STR$ (INT (8000*r)+1000000): LET f$=STR$ (INT (200*f)+1000): RETURN
2000 REM rescale rabbit axes
2010 FOR q=1 TO l-1: PLOT INVERSE 1;q, CODE n$(q)+88: NEXT q
2015 GO SUB 1000
2020 FOR q=1 TO l: LET n$(q)=CHR$ INT ( CODE n$(q)*.76+.5): PLOT q, CODE n$(q)+88: NEXT q
2030 LET u=u/1.36
2040 RETURN
3000 REM rescale fox axes
3010 FOR q=1 TO l-1: PLOT INVERSE 1;q, CODE m$(q): NEXT q
3020 GO SUB 1000
3030 FOR q=1 TO l: LET m$(q)=CHR$ INT ( CODE m$(q)*0.76+0.5): PLOT q, CODE m$(q): NEXT q
3040 LET v=v/1.36
3050 RETURN
4000 CIRCLE 128,152,12: PLOT 128,164: DRAW 0,-3: PLOT 140,152: DRAW -3,0: PLOT 128,140: DRAW 0,3: PLOT 116,152: DRAW 3,0: RETURN
5000 REM page 1
5010 LET d$="FOXES": LET xs=3: LET ys=3: LET cs=8: LET x=72: LET y=0: GO SUB 9400: PRINT AT 4,15;"and": LET d$="RABBITS": LET x=48: LET y=48: GO SUB 9400: PRINT AT 11,1;"AN EXAMPLE OF THE SOLUTION OF       DIFFERENTIAL EQUATIONS": PRINT AT 17,10; INVERSE 1; FLASH 1;"STOP": PRINT AT 17,15;"THE TAPE              PRESS ANY KEY TO CONTINUE": LET d$="PSION \* 1982": LET xs=2: LET ys=2: LET cs=8: LET x=40: LET y=168: GO SUB 9400: RETURN
6000 REM page 2
6010 PRINT "                                    Mathematical  equations  of  considerable  subtlety can  be  solved  on  the  Spectrum.   An example of this is differential equations  which  describe  the evolution  of a system in time. Examples  include  problems  in physics,chemistry,electronics,  meteorology,etc.                                                                                     Foxes  and  rabbits  is  a  classic example of equations    of this kind applied  to  an    ecological  problem.                                                                                                                                             Press any key": RETURN
7000 PRINT "  Imagine a land area populated by  two  species  say  rabbits  (number "
7010 PRINT AT 2,8; INVERSE 1;"r"
7020 PRINT AT 2,9;") and  foxes (number ": PRINT AT 2,29; INVERSE 1;"f"
7021 PRINT AT 2,30;")."
7022 PRINT AT 5,0;"Rabbits increase by birth  \a"
7023 PRINT AT 5,29; INVERSE 1;"r"
7024 PRINT AT 6,0;"Rabbits are killed by foxes\a": PRINT AT 6,29; INVERSE 1;"r*f"
7025 PRINT AT 9,0;"Foxes increase by birth    \a": PRINT AT 9,29; INVERSE 1;"f"
7026 PRINT AT 10,0;"Foxes die from starvation  \a": PRINT AT 10,29; INVERSE 1;"f/r"
7027 PRINT AT 13,1;"Over time \dt , the rabbit      population increases by \dr      and foxes by \df."
7028 PRINT AT 17,7;"\dr=(ar - brf)\dt"
7029 PRINT AT 19,7;"\df=(cf - df/r)\dt"
7030 PRINT AT 21,1;"a,b,c,d are constants"
7031 LET d$="Press any key": LET xs=1: LET ys=1: LET cs=8: LET x=8: LET y=183
7032 GO SUB 9400: RETURN
7499 LET d$="Too many foxes-foxes starve     ": LET xs=1: LET ys=1: LET cs=8: LET x=0: LET y=184: GO SUB 9400: RETURN
7500 LET d$="Few foxes-rabbit colony grows": GO SUB 9400: RETURN
7510 LET d$="Many rabbits-food for foxes  ": GO SUB 9400: PAUSE 100: LET d$="Fox population grows            ": GO SUB 9400: RETURN
7520 LET d$="There are now lots of foxes     ": GO SUB 9400: PAUSE 100: LET d$="Rabbit population decreases     ": GO SUB 9400: RETURN
7530 LET d$="Foxes are now short of food     ": GO SUB 9400: RETURN
7540 LET d$="The cycle repeats every 6 years": GO SUB 9400: RETURN
8000 PRINT "  The solution depends on the   initial conditions . In the     example that follows the initialnumber of rabbits is"
8010 PRINT AT 5,12; INVERSE 1;"r": PRINT AT 5,14;"= 2400": PRINT AT 7,0;"and the initial number of foxes is": PRINT AT 9,12; INVERSE 1;"f": PRINT AT 9,14;"= 180"
8020 PRINT AT 15,1;"Press any key for the Spectrum   to solve this problem in time": RETURN
8500 PRINT AT 10,4;"Enter your own initial          conditions to study               the problem"
8510 PRINT AT 14,5;"(Press y to continue               or n to stop    )"
8515 POKE 23560,0
8520 LET z=PEEK 23560: IF z=0 THEN GO TO 8520
8530 LET z$=CHR$ z
8540 IF z$="n" THEN PRINT AT 21,0;"O.K.  START THE TAPE           ": LOAD "life"
8550 IF z$="y" THEN RETURN
8560 GO TO 8515
8900 LET z=0: IF z$="" THEN RETURN
8905 FOR i=1 TO LEN z$: IF  CODE z$(i)<48 OR  CODE z$(i)>57 THEN RETURN
8910 NEXT i: LET z=VAL z$: RETURN
9000 CLEAR 31999: SAVE "evolution" LINE 9050
9010 SAVE "mcode" CODE 32000,299: SAVE "bits" CODE USR "a",32: STOP
9050 CLEAR 31999: LOAD "mcode" CODE : LOAD "bits" CODE USR "a": RUN
9400 LET a=23306: POKE a,x: POKE a+1,y: POKE a+2,xs: POKE a+3,ys: POKE a+4,cs: LET a=a+4: LET w=LEN d$: FOR i=1 TO w: POKE a+i, CODE d$(i): NEXT i: POKE a+w+1,255: LET w=USR 32000: RETURN
9999 PRINT PEEK 23730+256*PEEK 23731-PEEK 23653-256*PEEK 23654
